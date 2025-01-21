import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum BottomBarSection {
  home,
  employees,
  finance,
}

class BespokeBottomBar extends StatelessWidget {
  const BespokeBottomBar({super.key, required this.sectionCallback});

  final Function(BottomBarSection) sectionCallback;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF81C784),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildBottomNavigationBarItem(
          label: 'Home',
          iconPath: 'assets/icons/ic_home_enabled.svg',
        ),
        _buildBottomNavigationBarItem(
          label: 'Projects',
          iconPath: 'assets/icons/ic_home_enabled.svg',
        ),
        _buildBottomNavigationBarItem(
          label: 'Employees',
          iconPath: 'assets/icons/ic_employees.svg',
        ),
        _buildBottomNavigationBarItem(
          label: 'Finance',
          iconPath: 'assets/icons/ic_finance.svg',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            sectionCallback(BottomBarSection.home);
            break;
          case 1:
            sectionCallback(BottomBarSection.employees);
            break;
          case 2:
            sectionCallback(BottomBarSection.finance);
            break;
          case 3:
            sectionCallback(BottomBarSection.home);
            break;
          default:
            sectionCallback(BottomBarSection.home);
        }
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String label,
    required String iconPath,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        width: 28,
        height: 28,
      ),
      label: label,
    );
  }
}
