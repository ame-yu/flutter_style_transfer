// part of "../main.dart";
import 'package:flutter/material.dart';
import 'main_page.dart';
import 'setting_page.dart';
import 'history_page.dart';
import 'helper.dart';
import '../pages/home_page.dart';

final pages = [HistoryPage(), MainPage(), SettingPage()];

final List<BottomNavigationBarItem> bottomNavItems = [
  BottomNavigationBarItem(
    backgroundColor: Colors.green[400],
    icon: Icon(Icons.history),
    label: "History",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.black87,
    icon: Icon(Icons.add_a_photo_outlined),
    label: "New",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.amber,
    icon: Icon(Icons.settings),
    label: "Setting",
  ),
];

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 1;
  }

  void jump(int) {
    if (int != currentIndex) {
      setState(() {
        currentIndex = int;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: jump,
      ),
    );
  }
}
