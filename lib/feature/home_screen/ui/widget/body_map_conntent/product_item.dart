import 'package:flutter/material.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/product_list_horizontal.dart';
import 'package:revo/feature/home_screen/ui/widget/category_and_show.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            CategoryShowAll(categoryTitle: "الفئات"),
            ProductListHorizontal(),
          ],
        ));
  }
}
