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
        return Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white, width: 0.5)),
          ),
          // Adding padding to create space between the top border and icons
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.article),
                  label: 'Blog',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: currentIndex,
              selectedItemColor: Colors.blue,
              onTap: onItemSelected,
            ),
          ),
        );
      },
    );
  }
}
