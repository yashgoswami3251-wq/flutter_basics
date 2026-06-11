import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/circle_image.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Fonts",
      theme:  ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: DashboardScreen(),
    );
  }

}

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Fonts"),
        backgroundColor: Colors.blueGrey.shade100,
      ),

      // Here Googlefont is a custom font name taking in pubspec.yaml file

      body: Center(
          child: Text("Hellow YashGiri",style: TextStyle(fontFamily: 'Googlefont' , fontSize: 55, fontWeight: FontWeight.w400),)
      ),
    );
  }
}