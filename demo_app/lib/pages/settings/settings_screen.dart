import 'package:demo_app/pages/settings/settings_ui.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void onPressedMeButtonPressed() {
    print("I'm pressed");
  }

  @override
  Widget build(BuildContext context) {
    return SettingsUI(onPressedMeButtonPressed: onPressedMeButtonPressed);
  }
}
