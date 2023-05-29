import 'package:flutter/material.dart';
import 'package:rent_app/view/drawer/drawer_screen.dart';
import 'package:rent_app/view/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isCollapsed = true;
  double? screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      body: Stack(
        children: [
          MyDrawer(
            isCollpased: isCollapsed,
          ),
          HomeScreen(
            onCollpase: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            isCollapsed: isCollapsed,
            screenHeight: screenHeight!,
            screenWidth: screenWidth!,
            duration: duration,
          ),
        ],
      ),
    );
  }
}
