import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      selectedItemColor: orangeColor,
      unselectedItemColor: lightGreyColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: 'Home',
          icon: currentIndex != 0
              ? const Icon(Icons.other_houses)
              : const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.other_houses,
                    ),
                    Positioned.fill(
                      top: -21.0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Divider(
                          thickness: 4.0,
                          color: orangeColor,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        BottomNavigationBarItem(
          label: 'Notes',
          icon: currentIndex != 1
              ? const Icon(Icons.note)
              : const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.note,
                    ),
                    Positioned.fill(
                      top: -21,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Divider(
                          thickness: 4.0,
                          color: orangeColor,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: currentIndex != 2
              ? const Icon(Icons.calendar_month)
              : const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.calendar_month,
                    ),
                    Positioned.fill(
                      top: -21,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Divider(
                          thickness: 4.0,
                          color: orangeColor,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: currentIndex != 3
              ? const Icon(Icons.settings)
              : const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.settings,
                    ),
                    Positioned.fill(
                      top: -21,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Divider(
                          thickness: 4.0,
                          color: orangeColor,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
