import 'package:flutter/material.dart';

import 'core/core.dart';
import 'features/features.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: currentPageIndex,
        onIndexChanged: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[
        const HomePage(),
        const JourneysPage(),
        const BuddyIAPage(),
        const ProfilePage(),
      ][currentPageIndex],
    );
  }
}
