import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class JourneysPage extends StatelessWidget {
  const JourneysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Journeys Page',
          style: AppStyle.boldTextStyle,
        ),
      ),
    );
  }
}
