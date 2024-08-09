import 'package:budz_test/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../features.dart';
import 'widgets.dart';

class ArticlesWidget extends StatelessWidget {
  final List<ArticleEntity> articles;

  const ArticlesWidget({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SessionTitle(
          title: 'Artigos',
          description: 'Conteúdos e dicas extras',
          function: () {},
        ),
        ...articles.map((article) => ArticleCard(article: article)),
        const SizedBox(height: 35),
      ],
    );
  }
}

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
                        style: const TextStyle(
                          color: AppPallette.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
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
                      style: const TextStyle(
                        color: AppPallette.blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
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