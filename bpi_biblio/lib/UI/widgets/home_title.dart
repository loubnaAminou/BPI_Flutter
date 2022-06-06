import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Welcome to BPI Library",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25,
              letterSpacing: 15,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              backgroundColor: Colors.white70
          ),)
      ],
    );
  }
}
