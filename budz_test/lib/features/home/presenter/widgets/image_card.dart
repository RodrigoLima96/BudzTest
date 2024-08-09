import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final double size;
  final String image;
  const ImageCard({super.key, required this.size, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(image),
      ),
    );
  }
}
