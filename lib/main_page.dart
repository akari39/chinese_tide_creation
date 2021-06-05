import 'package:chinese_tide_creation/view/tide_bottom_nagibation_bar.dart';
import 'package:flutter/material.dart';

import 'view/home.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeComponent(),
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.animation), label: "测试"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "测试")
        ],
      ),
    );
  }
}