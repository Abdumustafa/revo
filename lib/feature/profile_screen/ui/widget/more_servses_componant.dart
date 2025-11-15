import 'package:flutter/material.dart';
import 'package:revo/feature/profile_screen/ui/widget/servses_item.dart';

class MoreServicesComponent extends StatelessWidget {
  const MoreServicesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
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
            title: "الشروط & الخصوصية",
            color: Colors.orange,
            onTap: () {}),
        ServiceItem(
            icon: Icons.info_outline,
            title: "عن ريفو",
            color: Colors.red,
            onTap: () {}),
        ServiceItem(
            icon: Icons.support_agent,
            title: "الدعم",
            color: Colors.green,
            onTap: () {}),
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
  }
}
