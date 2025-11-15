
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
         icon,
          color: Colors.blueGrey,
        ),
        Text(title
          ,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blueGrey,
            fontFamily: "Cairo",
          ),
        ),
      ],
    );
  }
}
