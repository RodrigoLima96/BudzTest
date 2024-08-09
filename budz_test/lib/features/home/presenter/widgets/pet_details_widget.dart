import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class PetDetailsWidget extends StatelessWidget {
  final PetEntity petEntity;
  const PetDetailsWidget({
    super.key,
    required this.petEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PetDetailCard(title: 'Sexo', detail: petEntity.gender),
          const PetDetailCard(title: 'Idade', detail: '1a 3m'),
          const PetDetailCard(title: 'Peso', detail: ''),
        ],
      ),
    );
  }
}

class PetDetailCard extends StatelessWidget {
  final String title;
  final String detail;
  const PetDetailCard({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 66,
        width: 114,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        color: AppPallette.secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppPallette.secondaryTextColor,
              ),
            ),
            detail != ''
                ? Text(
                    detail,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 12, left: 2),
                    child: Container(
                      width: 14,
                      height: 2,
                      color: AppPallette.primaryColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}