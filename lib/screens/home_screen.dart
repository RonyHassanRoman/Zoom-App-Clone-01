import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet and chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meeting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Contracts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
