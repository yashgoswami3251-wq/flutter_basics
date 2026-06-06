// Create demo application fluuter for practice

import 'package:flutter/material.dart';

void main(){
  runApp(flutterapp());
}

class flutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: Mydashboardscreen(),
    );
  }
}

class Mydashboardscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        color: Colors.lightGreen,
      ),
    );
  }
}