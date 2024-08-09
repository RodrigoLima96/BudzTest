import 'package:flutter/material.dart';

import '../widgets.dart';

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
