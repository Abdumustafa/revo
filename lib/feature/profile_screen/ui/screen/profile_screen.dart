import 'package:flutter/material.dart';
import 'package:revo/feature/property_details/ui/widget/advertiser_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 172, 195, 221),
          height: 300,
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 16.0, left: 16.0),
                child: AdvertiserDetails(),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
