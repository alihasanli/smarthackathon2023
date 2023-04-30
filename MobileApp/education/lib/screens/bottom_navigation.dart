import 'package:education/screens/chat_screen.dart';
import 'package:education/screens/home_screen.dart';
import 'package:education/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int index = 0;
  List<Widget> pages = [HomeScreen(), ChatScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 6, left: 4, right: 4),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(32)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            onTabChange: (value) {
              setState(() {
                index = value;
              });
            },
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 14,
            iconSize: 24,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Courses',
              ),
              GButton(
                icon: Icons.chat,
                text: 'Community',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
          ),
        ),
      ),
      body: pages[index],
    );
  }
}
