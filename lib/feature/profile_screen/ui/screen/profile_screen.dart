import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/feature/profile_screen/ui/widget/body_componant.dart';
import 'package:revo/feature/profile_screen/ui/widget/image_profile.dart';
import 'package:revo/feature/profile_screen/ui/widget/profile_details_and_features.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: 280.h,
            width: double.infinity,
            child: Image.asset(
              "assets/image/city.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 330.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 95, 150, 170).withOpacity(0.7),
                  const Color(0xff036268).withOpacity(0.9),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          ProfileDetailsAndFeatures(),
          BodyComponant(),
          ImageAvatar(),
        ],
      ),
    );
  }
}
