import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130.h,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          height: 110.h, 
          width: 110.w, 
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 4.w,
            ),
            image: const DecorationImage(
              image: AssetImage("assets/image/profile.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
