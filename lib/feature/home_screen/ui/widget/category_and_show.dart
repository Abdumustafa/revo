import 'package:flutter/material.dart';

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
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(children: [
              Text(
                "عرض الكل",
                style: TextStyle(
                    color: Color(0xff2d8fcc),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xff2d8fcc)),
            ])),
      ],
    );
  }
}
