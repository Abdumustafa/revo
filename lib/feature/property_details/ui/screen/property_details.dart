import 'package:flutter/material.dart';
import 'package:revo/feature/property_details/ui/widget/bottom_bar_buttons.dart';
import 'package:revo/feature/property_details/ui/widget/property_details_content.dart';
import 'package:revo/feature/property_details/ui/widget/property_image.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({super.key});
  final List<String> propertyImage = const [
    "assets/image/home2.webp",
    "assets/image/home1.webp",
    "assets/image/home2.webp",
    "assets/image/home4.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageCarouselCard(
                  images: propertyImage,
                ),
                PropertyDetailsContent(),
              ],
            ),
          ),
          bottomNavigationBar: BottomBarButtons(),
        ),
      ),
    );
  }
}
