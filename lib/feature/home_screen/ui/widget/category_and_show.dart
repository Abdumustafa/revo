import 'package:flutter/material.dart';
import 'package:revo/core/theaming/colors.dart';

class CategoryShowAll extends StatelessWidget {
  final String categoryTitle;

  const CategoryShowAll({
    required this.categoryTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            categoryTitle,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Text(
              "عرض الكل",
              style: TextStyle(
                  color:ColorsManager.secondaryColor,
                  fontSize: 10,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
