// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Random Image picker",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int randImg = 1;
  void changeImg() {
    setState(() {
      randImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Image Picker"),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "accets/$randImg.jpg",
            height: 250,
            width: 250,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: changeImg,
            child: Text(
              "Choose another",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
