import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  final Function onPressedMeButtonPressed;

  HomeUI({
    this.onPressedMeButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Home Page"),
            FlatButton(
              child: Text("Press ME Home!!!!!"),
              onPressed: onPressedMeButtonPressed,
            ),
          ],
        ),
        color: Colors.pink,
      ),
    );
  }
}
