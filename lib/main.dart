// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late PageController pageController = PageController();
  int selectedIndex = 1;
  void onChangeTab(int index) {
    selectedIndex = index;
    pageController.jumpToPage(selectedIndex - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff270f31),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Animated Jumping Bottom Bar",
          style: TextStyle(
            color: Color(0xffc75a80),
          ),
        ),
        backgroundColor: Color(0xfff5f3f6),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(
            child: Center(
              child: Image.asset(
                "assets/images/download-removebg-preview.png",
              ),
            ),
            color: Color(0xff270f31),
          ),
          Container(
            child: Center(
              child: Image.asset(
                "assets/images/download-removebg-preview (1).png",
              ),
            ),
            color: Color(0xff270f31),
          ),
          Container(
            child: Center(
              child: Image.asset(
                "assets/images/download-removebg-preview (2).png",
              ),
            ),
            color: Color(0xff270f31),
          ),
          Container(
            child: Center(
              child: Image.asset(
                "assets/images/images-removebg-preview.png",
              ),
            ),
            color: Color(0xff270f31),
          ),
          Container(
            child: Center(
              child: Image.asset(
                "assets/images/download-removebg-preview (3).png",
              ),
            ),
            color: Color(0xff270f31),
          ),
        ],
      ),
      bottomNavigationBar: JumpingTabBar(
        duration: Duration(seconds: 1),
        selectedIndex: selectedIndex,
        onChangeTab: onChangeTab,
        backgroundColor: Color(0xfff5f3f6),
        circleGradient: LinearGradient(
          colors: [
            Color(0xffc75a80),
            Color(0xff7d1f57),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        items: [
          TabItemIcon(
            startColor: Color(0xff49464a),
            endColor: Color(0xfff7ecf4),
            iconData: Icons.home_filled,
            curveColor: Color(0xff270f31),
          ),
          TabItemIcon(
            startColor: Color(0xff49464a),
            endColor: Color(0xfff7ecf4),
            iconData: Icons.favorite,
            curveColor: Color(0xff270f31),
          ),
          TabItemIcon(
            startColor: Color(0xff49464a),
            endColor: Color(0xfff7ecf4),
            iconData: Icons.location_on,
            curveColor: Color(0xff270f31),
          ),
          TabItemIcon(
            startColor: Color(0xff49464a),
            endColor: Color(0xfff7ecf4),
            iconData: Icons.notifications,
            curveColor: Color(0xff270f31),
          ),
          TabItemIcon(
            startColor: Color(0xff49464a),
            endColor: Color(0xfff7ecf4),
            iconData: Icons.person,
            curveColor: Color(0xff270f31),
          ),
        ],
      ),
    );
  }
}
