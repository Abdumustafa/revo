import 'package:flutter/material.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class PropertyTypeField extends StatelessWidget {
  const PropertyTypeField({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
  });

  final String title;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.font18mainColorboldCairo),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey[200],
            ),
            height: 50,
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              style: const TextStyle(fontFamily: "Cairo"),
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle:
                    const TextStyle(color: Colors.grey, fontFamily: "Cairo"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
