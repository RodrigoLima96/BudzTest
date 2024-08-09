import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  final String image;
  const BannerCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 342,
      height: 136,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(image),
      ),
    );
  }
}
