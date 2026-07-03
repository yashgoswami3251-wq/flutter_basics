import 'dart:async';

import 'package:flutter/material.dart';

import 'intro_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // Whenever This State run initState function automatically inilized
  @override
  void initState() {
    super.initState();

    // after second : ? splash screen automatically remove
    // pushReplacement is work do not option to backpress like simple push

    Timer(Duration(seconds: 3) ,(){
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=>IntroPage()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(child: Text("WELCOME YASH",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w300,color: Colors.white),)),
      ),
    );
  }
}