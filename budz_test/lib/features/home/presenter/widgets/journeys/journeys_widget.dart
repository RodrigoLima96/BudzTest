import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../features.dart';
import '../widgets.dart';
import 'category_card.dart';

class JourneysWidget extends StatelessWidget {
  final List<CategoryEntity> categories;

  const JourneysWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SessionTitle(
          title: 'Explorar Jornadas',
          description: 'Descubra novas trilhas',
          function: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...categories.asMap().entries.map((entry) {
              int index = entry.key;
              CategoryEntity category = entry.value;

              bool isLast = index == categories.length - 1;

              return CategoryCard(
                function: () {},
                name: category.name,
                image: category.imageUrl,
                isLast: isLast,
              );
            }),
          ]),
        ),
      ],
    );
  }
}