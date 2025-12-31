import 'package:flutter/material.dart';
import 'package:google_keystone/screens/course_page.dart';
import 'package:google_keystone/screens/mentor_login.dart';
import 'package:google_keystone/screens/student_login.dart';
import 'package:google_keystone/screens/video_section.dart';

import 'meet_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int currentIndex =0;
  final pages = [
    Video_s(),
    MyMeet(),
    MyCourse()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.ondemand_video, color: Colors.black,), label: "Video"),
        BottomNavigationBarItem(icon: Icon(Icons.group_add_rounded, color: Colors.black,), label: "Meet"),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book, color: Colors.black,), label: "Course")
      ]),
    );
  }
}
