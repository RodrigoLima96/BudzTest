
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core.dart';

class SvgIcon extends StatelessWidget {
  final String iconPath;
  final bool iconSelected;
  const SvgIcon({
    super.key,
    required this.iconPath,
    required this.iconSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      color: iconSelected ? AppPallette.darkBlueColor : null,
    );
  }
}