import 'package:flutter/material.dart';

class MapBodyScreen extends StatelessWidget {
  const MapBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Map Body Screen'),
        Container(
          height: 200,
          color: Colors.blueAccent,
        ),
         Container(
          height: 200,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
