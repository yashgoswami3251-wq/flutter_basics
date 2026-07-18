import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';
import 'package:flutter_basics/Shared_Preference/shared_preference_login/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';

void main(){
  runApp(splash());
}

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: myflutter(),
    );
  }
}

class myflutter extends StatefulWidget{
  @override
  State<myflutter> createState() => myflutterState();
}

class myflutterState extends State<myflutter> {

  static const String KEYLOGIN = "LOGIN";

  @override
  void initState() {
    super.initState();

    whereTogo();

  }

  void whereTogo() async{

    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedin = sharedPref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 1),(){

      if(isLoggedin!=null){
        if(isLoggedin){
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context)=>homepage()),);
        }else{
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context)=>login()),);
        }
      }else{
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=>login()),);
      }


    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELCOME",style: TextStyle(fontSize: 34),),
            ],
          ),
        ),
      ),
    );
  }
}
