import 'package:flutter/material.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/product_item.dart';
class BodyScreen extends StatelessWidget {
   BodyScreen({super.key, required this.filter});

  final String filter;

  final List<String> categories = [
    'شقق',
    'فلل',
    'أراضي',
    'محلات',
    'مكاتب',
    'عمارات',
    'مصانع',
  ];

  @override
  Widget build(BuildContext context) {
    List<String> displayedCategories = filter == 'الكل'
        ? categories
        : categories.where((c) => c == filter).toList();

    return SingleChildScrollView(
      child: Column(
        children: displayedCategories
            .map((category) => ProductItem(categoryTitle: category))
            .toList(),
      ),
    );
  }
}
