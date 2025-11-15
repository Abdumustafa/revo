
import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
            image: DecorationImage(
              image: AssetImage("assets/image/profile.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
