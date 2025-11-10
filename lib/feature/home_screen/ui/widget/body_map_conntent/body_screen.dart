import 'package:flutter/material.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/product_item.dart';
import 'package:revo/feature/home_screen/ui/widget/category_and_show.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
            ProductItem(),
          ],
        ),
      ),
    );
  }
}
