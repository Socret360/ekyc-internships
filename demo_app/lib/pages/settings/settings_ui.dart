import 'package:flutter/material.dart';

class SettingsUI extends StatelessWidget {
  final Function onPressedMeButtonPressed;

  SettingsUI({
    this.onPressedMeButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Settings Page"),
            FlatButton(
              child: Text("Press ME Settings!!!!!"),
              onPressed: onPressedMeButtonPressed,
            ),
          ],
        ),
        color: Colors.orange,
      ),
    );
  }
}
