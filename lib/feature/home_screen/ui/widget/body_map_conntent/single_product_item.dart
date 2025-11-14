import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/models/product_model.dart';

class SingleItemProduct extends StatelessWidget {
  const SingleItemProduct({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
            onTap: () {
              Get.toNamed('/PropertyDetails');
            },
      child: Container(
        width: 220,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2),
                  Text(
                    product.title,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: "Cairo",
                    ),
                  ),
                  Text(
                    product.description,
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                      fontFamily: "Cairo",
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    product.price,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:ColorsManager.secondaryColor,
                      fontFamily: "Cairo",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
