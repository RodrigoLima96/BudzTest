import 'package:flutter/material.dart';
import '../core.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 1.5,
          color: AppPallette.greyColor.withOpacity(0.15),
        ),
        Theme(
          data: Theme.of(context).copyWith(
            navigationBarTheme: NavigationBarThemeData(
              indicatorColor: AppPallette.lightBlueColor,
              labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return const TextStyle(
                      color: AppPallette.darkBlueColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    );
                  }
                  return const TextStyle(
                    color: AppPallette.secondaryTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  );
                },
              ),
            ),
          ),
          child: NavigationBar(
            backgroundColor: AppPallette.whiteColor,
            onDestinationSelected: onIndexChanged,
            elevation: 0,
            selectedIndex: currentIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: SvgIcon(
                  iconPath: 'assets/icons/home-icon.svg',
                  iconSelected: true,
                ),
                icon: SvgIcon(
                  iconPath: 'assets/icons/home-icon.svg',
                  iconSelected: false,
                ),
                label: 'Início',
              ),
              NavigationDestination(
                selectedIcon: SvgIcon(
                  iconPath: 'assets/icons/journeys-icon.svg',
                  iconSelected: true,
                ),
                icon: SvgIcon(
                  iconPath: 'assets/icons/journeys-icon.svg',
                  iconSelected: false,
                ),
                label: 'Jornadas',
              ),
              NavigationDestination(
                selectedIcon: SvgIcon(
                  iconPath: 'assets/icons/buddy-ia-icon.svg',
                  iconSelected: true,
                ),
                icon: SvgIcon(
                  iconPath: 'assets/icons/buddy-ia-icon.svg',
                  iconSelected: false,
                ),
                label: 'Buddy Ia',
              ),
              NavigationDestination(
                selectedIcon: SvgIcon(
                  iconPath: 'assets/icons/profile-icon.svg',
                  iconSelected: true,
                ),
                icon: SvgIcon(
                  iconPath: 'assets/icons/profile-icon.svg',
                  iconSelected: false,
                ),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ],
    );
  }
}