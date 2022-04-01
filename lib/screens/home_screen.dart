import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/meet_screen.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/screens/history_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageindex = 0;
  final pages = [
    const MeetScreen(),
    const HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroudColor,
        elevation: 0,
        title:const Text("Meet & Chat "),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageindex = index;
          });
        },
        currentIndex: pageindex,
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
      body: pages[pageindex],
      
    );
  }
}
