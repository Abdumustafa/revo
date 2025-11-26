import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:revo/core/models/product_model.dart';
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
        imageUrl: "assets/image/home2.webp",
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
      height: 250.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Get.toNamed('/PropertyDetails');
            },
            child: SingleItemProduct(
              product: product,
            ),
          );
        },
      ),
    );
  }
}
