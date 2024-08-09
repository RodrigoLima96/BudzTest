// ignore_for_file: library_private_types_in_public_api

import 'package:banner_carousel/banner_carousel.dart';
import 'package:budz_test/core/core.dart';
import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import 'widgets.dart';

class BannersWidget extends StatelessWidget {
  final List<BannerEntity> banners;

  const BannersWidget({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
  
    // sorting by priority, and placing priority 7 last
    final sortedBanners = banners
      ..sort((a, b) {
        if (a.priority == 7 && b.priority != 7) return 1;
        if (b.priority == 7 && a.priority != 7) return -1;
        return b.priority.compareTo(a.priority);
      });

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BannerCarousel(
            animation: true,
            showIndicator: true,
            margin: const EdgeInsets.only(left: 3),
            spaceBetween: 0,
            activeColor: AppPallette.mediumBlueColor,
            viewportFraction: 0.90,
            customizedBanners: sortedBanners.map((banner) {
              return BannerCard(image: banner.imageUrl);
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
