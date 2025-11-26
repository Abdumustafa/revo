import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:revo/feature/profile_screen/ui/widget/servses_item.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreServicesComponent extends StatelessWidget {
  const MoreServicesComponent({super.key});

  Future<void> _callNumber(String number) async {
    final Uri url = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("Cannot launch phone dialer");
    }
  }

  Future<void> _openWhatsApp(String number) async {
    final phone = number.startsWith('0') ? '2${number.substring(1)}' : number;

    final Uri url = Uri.parse("whatsapp://send?phone=$phone");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print("WhatsApp NOT installed or can't be opened");
    }
  }

  void _openSupportSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "الدعم",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              ListTile(
                  title: const Text(
                    "المحادثة مع الفريق",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Cairo",
                    ),
                  ),
                  subtitle: const Text(
                    "تحدث إلى فريقنا للحصول على المساعدة",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: "Cairo",
                    ),
                  ),
                  trailing: const Icon(Icons.chat_outlined),
                  onTap: () {
                    _openWhatsApp("201040148292");
                  }),
              const Divider(),
              ListTile(
                title: const Text(
                  "طلب مكالمة",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                  ),
                ),
                subtitle: const Text(
                  "تعرف على مزيد من المعلومات في مكالمة سريعة",
                  style: TextStyle(
                    fontFamily: "Cairo",
                  ),
                  textDirection: TextDirection.rtl,
                ),
                trailing: const Icon(Icons.phone_outlined),
                onTap: () {
                  _callNumber("01029709220");
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 14.w,
          mainAxisSpacing: 14.h,
          childAspectRatio: 0.95,
        ),
        children: [
          ServiceItem(
              icon: Icons.article_outlined,
              title: "المقالات",
              color: Colors.blue,
              onTap: () {}),
          ServiceItem(
              icon: Icons.privacy_tip_outlined,
              title: "الشروط&الخصوصية",
              color: Colors.orange,
              onTap: () {
                Get.toNamed("/TermsPrivacyPage");
              }),
          ServiceItem(
              icon: Icons.info_outline,
              title: "عن ريفو",
              color: Colors.red,
              onTap: () {
                Get.toNamed("/AboutAppScreen");
              }),
          ServiceItem(
              icon: Icons.support_agent,
              title: "الدعم",
              color: Colors.green,
              onTap: () {
                _openSupportSheet(context);
              }),
          ServiceItem(
              icon: Icons.group_add_outlined,
              title: "الدعوات",
              color: Colors.purple,
              onTap: () {}),
          ServiceItem(
              icon: Icons.settings,
              title: "الإعدادات",
              color: Colors.teal,
              onTap: () {}),
        ],
      );
    });
  }
}
