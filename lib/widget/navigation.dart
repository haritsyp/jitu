import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation();

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.store, size: 30, color: Colors.grey[1000]),
            title: new Text('')),
        BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30, color: Colors.grey[1000]),
            title: new Text('')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30, color: Colors.grey[1000]),
            title: new Text(''))
      ],
    );
  }
}
