import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:student_portal/Screens/result.dart';

import 'Screens/achievements.dart';
import 'Screens/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndex = 0;

  List<Widget> screen = [const Home(), const Result(), const Achievements()];

  // get backgroundColor => null;
  Color backgroundColor = const Color.fromARGB(255, 245, 233, 248);

  // void changeTab(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //     switch (index) {
  //       case 0:
  //         Color backgroundColor = const Color.fromARGB(255, 245, 233, 248);
  //         break;
  //       case 1:
  //         Color backgroundColor = const Color.fromARGB(255, 234, 181, 181);
  //         break;
  //       case 2:
  //         Color backgroundColor = const Color.fromARGB(255, 184, 214, 224);
  //         break;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        margin: EdgeInsets.all(10),
        backgroundColor: backgroundColor,
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
          // changeTab(i);
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.table_chart_rounded),
            title: const Text("Results"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Achievements"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
      body: screen[_currentIndex],
    );
  }
}
