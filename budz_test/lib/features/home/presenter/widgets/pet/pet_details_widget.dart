import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../features.dart';
import 'pet_detail_card.dart';

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