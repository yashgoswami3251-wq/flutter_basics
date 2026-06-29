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
            child: Text("Icons"),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_circle,size: 70,color: Colors.grey,),
            Icon(Icons.call,size: 50,color: Colors.pink,),
            Icon(Icons.home_filled,size: 40,color: Colors.green,),
            Icon(Icons.stop_rounded,size: 100,color: Colors.red,),
          ],
        ))
    );
  }
}