import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Profile Page',
          style: AppStyle.boldTextStyle,
        ),
      ),
    );
  }
}
