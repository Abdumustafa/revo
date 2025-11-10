import 'package:flutter/material.dart';
import 'package:revo/feature/home_screen/logic/product_model.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/single_product_item.dart';

class ProductListHorizontal extends StatelessWidget {
  const ProductListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = [
      ProductModel(
        title: "شقة سكنية 125 م للبيع",
        description: "كاش بالشروق القاهرة، موقع مميز وتشطيب راقي.",
        price: "EGP 2,500,000",
        imageUrl: "assets/image/home.webp",
      ),
      ProductModel(
        title: "شقة سكنية 125 م للبيع",
        description: "كاش بالشروق القاهرة، موقع مميز وتشطيب راقي.",
        price: "EGP 2,500,000",
        imageUrl: "assets/image/home3.webp",
      ),
      ProductModel(
        title: "شقة سكنية 125 م للبيع",
        description: "كاش بالشروق القاهرة، موقع مميز وتشطيب راقي.",
        price: "EGP 2,500,000",
        imageUrl: "assets/image/home4.webp",
      ),
      ProductModel(
        title: "شقة سكنية 125 م للبيع",
        description: "كاش بالشروق القاهرة، موقع مميز وتشطيب راقي.",
        price: "EGP 2,500,000",
        imageUrl: "assets/image/home1.webp",
      ),
    ];

    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final product = products[index];
          return SingleItemProduct(
            product: product,
          );
        },
      ),
    );
  }
}
