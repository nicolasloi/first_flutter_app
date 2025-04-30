import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final ValueNotifier<int> currentIndexNotifier;
  final Function(int) onItemSelected;

  const NavBar({
    super.key,
    required this.currentIndexNotifier,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentIndexNotifier,
      builder: (context, currentIndex, child) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Blog'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          onTap: onItemSelected,
        );
      },
    );
  }
}
