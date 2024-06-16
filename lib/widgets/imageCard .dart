import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final Animation<double> animation;

  ImageCard(
      {required this.imagePath,
      required this.animation,
      required ValueKey<String> key});

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: Card(
        color: Color.fromARGB(255, 20, 180, 250),
        child: Image.asset(imagePath),
      ),
    );
  }
}
