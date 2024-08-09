import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/core.dart';
import '../../../../features.dart';
import '../widgets.dart';

class ArticleCard extends StatelessWidget {
  final ArticleEntity article;

  const ArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Row(
          children: [
            ImageCard(size: 120, image: article.imageUrl),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      color: hexToColor(article.color),
                      constraints: const BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                        maxWidth: double.infinity,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        article.name,
                        style: AppStyle.mediumTextStyle.copyWith(
                          fontSize: 14,
                          color: AppPallette.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    constraints: const BoxConstraints(
                      maxWidth: 170,
                    ),
                    child: Text(
                      article.title,
                      style: AppStyle.mediumTextStyle,
                      softWrap: true,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppPallette.lightBlueColor,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/arrow-right.svg',
                  width: 6.55,
                  height: 11.15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
