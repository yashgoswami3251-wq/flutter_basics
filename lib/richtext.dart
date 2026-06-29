import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

void main(){
  runApp(Myflutterapp());
}

class Myflutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,

          textTheme: TextTheme(

            // We can use anywhere this styles in application

            headlineLarge: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            headlineMedium: TextStyle(fontSize: 15, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),

          )
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
        title: Center(
          child: Text("Dashboard"),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 24,
                color: Colors.blueGrey
              ),
              children: <TextSpan>[
                TextSpan(text: "Hello"),
                TextSpan(text: "  World",style: TextStyle(color: Colors.lightGreenAccent,fontSize: 30, fontWeight: FontWeight.w500)),

                TextSpan(
                  text: ' Yash'
                ),

                TextSpan(
                  text: " Pritesh",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange,fontFamily: 'Googlefont')
                )
              ],

            )),
      )
    );
  }
}