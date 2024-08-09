import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../features.dart';
import 'widgets.dart';

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

class CategoryCard extends StatelessWidget {
  final VoidCallback function;
  final String name;
  final String image;
  final bool isLast;

  const CategoryCard({
    super.key,
    required this.function,
    required this.name,
    required this.image,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 20, right: isLast ? 20 : 0),
        child: Column(
          children: [
            ImageCard(size: 144, image: image),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
