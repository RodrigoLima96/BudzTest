import 'package:flutter/material.dart';

import '../../../features.dart';

class HomePageBody extends StatelessWidget {
  final HomeEntity homeEntity;
  const HomePageBody({super.key, required this.homeEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(homeEntity.petEntity.name)),
    );
  }
}
