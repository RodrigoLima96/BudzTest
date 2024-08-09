import 'package:flutter/material.dart';
import '../../../features.dart';
import 'widgets.dart';

class HomePageBody extends StatelessWidget {
  final HomeEntity homeEntity;
  const HomePageBody({super.key, required this.homeEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          children: [
            PetInfoWidget(petEntity: homeEntity.petEntity),
            PetDetailsWidget(petEntity: homeEntity.petEntity),
          ],
        ),
      ),
    );
  }
}