import 'package:flutter/material.dart';

class NetflixNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NetflixNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavigationBarItem(
            icon: Icons.home_outlined,
            activeIcon: Icons.home_filled,
            label: 'Accueil',
          ),
          _buildNavigationBarItem(
            icon: Icons.video_library_outlined,
            activeIcon: Icons.video_library,
            label: 'Tout nouveau',
          ),
          _buildNavigationBarItem(
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            label: 'Mon Netflix',
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      activeIcon: Icon(activeIcon),
      label: label,
    );
  }
}
