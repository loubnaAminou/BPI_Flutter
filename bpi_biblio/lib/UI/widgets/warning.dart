import 'package:flutter/material.dart';

class Warning extends StatelessWidget {
  String text;

  Warning(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.bottomCenter,
      child: Text(text,
        style: TextStyle(
          fontSize: 25,
          backgroundColor: Colors.white12,
          color: Colors.red[800],
        ),),
    );
  }
}
