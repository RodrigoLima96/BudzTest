// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/core.dart';

class SessionTitle extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback function;

  const SessionTitle({
    super.key,
    required this.title,
    required this.description,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppPallette.secondaryTextColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              function();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Ver tudo',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppPallette.darkBlueColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SvgPicture.asset(
                      'assets/icons/arrow-right.svg',
                      color: AppPallette.darkBlueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
