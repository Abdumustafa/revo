import 'package:flutter/material.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/body_screen.dart';
import 'package:revo/feature/home_screen/ui/widget/search_and_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Revo'),
        centerTitle: true,
        leading: Icon(Icons.map_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.dark_mode),
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
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.map_rounded, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
