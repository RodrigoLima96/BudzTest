import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../features.dart';
import 'pet_detail_card.dart';

class PetDetailsWidget extends StatefulWidget {
  final PetEntity petEntity;
  const PetDetailsWidget({
    super.key,
    required this.petEntity,
  });

  @override
  State<PetDetailsWidget> createState() => _PetDetailsWidgetState();
}

class _PetDetailsWidgetState extends State<PetDetailsWidget> {
  final homeStore = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => homeStore.showPetDetails
          ? Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PetDetailCard(title: 'Sexo', detail: widget.petEntity.gender),
                  const PetDetailCard(title: 'Idade', detail: '1a 3m'),
                  const PetDetailCard(title: 'Peso', detail: ''),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}
