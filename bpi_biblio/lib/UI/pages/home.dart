import 'package:bpi_biblio/UI/widgets/appDrawer.dart';
import 'package:bpi_biblio/UI/widgets/home_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BPI Biblio"),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/library.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: HomeTitle(),
      )
    );
  }
}
