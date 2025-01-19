import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BespokeBottomBar extends StatelessWidget {
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
