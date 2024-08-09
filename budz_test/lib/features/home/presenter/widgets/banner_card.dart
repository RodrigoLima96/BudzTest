import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final bool singleBanner;

  const BannerCard({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.singleBanner,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: !singleBanner ? 10 : 0),
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
