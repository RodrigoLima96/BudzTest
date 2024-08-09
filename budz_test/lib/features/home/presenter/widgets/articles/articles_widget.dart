import 'package:budz_test/features/home/presenter/widgets/articles/article_card.dart';
import 'package:flutter/material.dart';

import '../../../../features.dart';
import '../widgets.dart';

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