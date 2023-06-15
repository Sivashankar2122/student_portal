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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        margin: const EdgeInsets.all(10),
        backgroundColor: const Color.fromARGB(255, 245, 233, 248),
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
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
