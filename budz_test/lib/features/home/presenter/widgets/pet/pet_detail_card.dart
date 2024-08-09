import 'package:flutter/material.dart';

import '../../../../../core/core.dart';

class PetDetailCard extends StatelessWidget {
  final String title;
  final String detail;
  const PetDetailCard({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 66,
        width: 114,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        color: AppPallette.secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppStyle.regularTextStyle.copyWith(color: AppPallette.secondaryTextColor),
            ),
            detail != ''
                ? Text(
                    detail,
                    style: AppStyle.mediumTextStyle,
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 12, left: 2),
                    child: Container(
                      width: 14,
                      height: 2,
                      color: AppPallette.primaryColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}