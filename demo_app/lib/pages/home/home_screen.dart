import 'package:demo_app/pages/home/home_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPressedMeButtonPressed() {
    print("I'm pressed");
  }

  @override
  Widget build(BuildContext context) {
    return HomeUI(onPressedMeButtonPressed: onPressedMeButtonPressed);
  }
}
