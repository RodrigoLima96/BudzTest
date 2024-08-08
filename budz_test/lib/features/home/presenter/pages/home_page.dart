import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../presenter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeStore = Modular.get<HomeStore>();

    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            await homeStore.getHomePageData();
          },
          child: const Text('Get Home Page Data'),
        ),
      ),
    );
  }
}
