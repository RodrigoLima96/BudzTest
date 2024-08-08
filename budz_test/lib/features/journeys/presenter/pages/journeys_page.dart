import 'package:flutter/material.dart';

class JourneysPage extends StatelessWidget {
  const JourneysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Journeys Page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
