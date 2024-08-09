import 'package:flutter/material.dart';

import '../../../features.dart';
import 'widgets.dart';

class SingleBannerWidget extends StatelessWidget {
  final List<BannerEntity> banners;

  const SingleBannerWidget({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    List<BannerEntity> bannersEntity = banners.map((model) {
      return BannerEntity(
        id: model.id,
        status: model.status,
        audience: model.audience,
        partner: model.partner,
        priority: model.priority,
        link: model.link,
        targetSpecie: model.targetSpecie,
        imageUrl: model.imageUrl,
      );
    }).toList();

    BannerEntity highestPriorityBanner = bannersEntity.reduce((current, next) {
      return current.priority > next.priority ? current : next;
    });

    return Padding(
      padding: const EdgeInsets.only(top: 45, bottom: 15),
      child: BannerCard(
        image: highestPriorityBanner.imageUrl,
        width: 358,
        height: 136,
        singleBanner: true,
      ),
    );
  }
}
