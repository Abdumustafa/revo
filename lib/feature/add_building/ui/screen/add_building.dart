import 'package:flutter/material.dart';

class AddBuilding extends StatelessWidget {
  const AddBuilding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Building'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Add Building Screen Content'),
      ),
    );
  }
}