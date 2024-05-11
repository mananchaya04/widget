import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends StatefulWidget {
final int currentIndex;

  const BottomBar({
    required this.currentIndex,
    super.key,
});

  @override
  Widget build(BuildContext context) {
    return BottomNavBar(
      items: [
        (
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        (
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      onTap: (currentIndex) {
          if (currentIndex == 0) {
            context.go('/');
          } else if (currentIndex == 1) {
            context.go('/profile');
          }
        },
    );
  }
}
 
