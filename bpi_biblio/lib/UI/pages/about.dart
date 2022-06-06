import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Who am I ?",
            style: TextStyle(
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.blueGrey
            ),),
          Text("Student Engineer of Big Data & Cloud Computing"),
          Image.asset("images/me.png", height: 400, width: 250,),
          Container(
              alignment: Alignment.bottomCenter,
              child: Text("Made with ❤ By Aminou Loubna !"))
        ],
      ),
    );
  }
}
