import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/body_screen.dart';
import 'package:revo/feature/home_screen/ui/widget/search_and_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 248, 255),
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        title: const Text(
          'Revo',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Cairo",
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/NotificationsScreen');
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(Icons.notifications_none, color: Colors.white),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SearchWithFilter(),
          BodyScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorsManager.mainColor,
        child: const Icon(Icons.map_rounded, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
