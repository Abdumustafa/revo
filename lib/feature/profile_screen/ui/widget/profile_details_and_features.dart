import 'package:flutter/material.dart';
import 'package:revo/feature/profile_screen/ui/widget/profile_item.dart';

class ProfileDetailsAndFeatures extends StatelessWidget {
  const ProfileDetailsAndFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Text(
                      "عبدالرحمن محمد",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "القاهره-مصر",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                        fontFamily: "Cairo",
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileItem(
                            title: 'الملف الشخصي',
                            icon: Icons.person,
                          ),
                          ProfileItem(
                            title: 'المفضل',
                            icon: Icons.favorite,
                          ),
                          ProfileItem(
                            title: 'دليل الاسعار',
                            icon: Icons.price_change,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
