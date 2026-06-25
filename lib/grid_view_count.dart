import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: dashboard(),
    );
  }
}



class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var clrarrr = [
      Colors.blueGrey,
      Colors.greenAccent,
      Colors.green,
      Colors.red,
      Colors.blueAccent,
      Colors.lightGreen,
      Colors.amberAccent,
      Colors.lightGreenAccent
    ];

    return Scaffold(
      appBar:  AppBar(
        title: Center(child: Text("Hello yash")),
        backgroundColor: Colors.blueGrey,
      ),

      // In this phase at a time one grid you can run and remove column widget then perform
      // Count is a divided width all Container Like you you provide width 400 and 4 Container then divided all 100,100

      body:GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        Container(color: clrarrr[5],),
        Container(color: clrarrr[1],),
        Container(color: clrarrr[2],),
        Container(color: clrarrr[3],),
        Container(color: clrarrr[4],),
        Container(color: clrarrr[0],),
        Container(color: clrarrr[6],),
        Container(color: clrarrr[7],),
        Container(color: clrarrr[0],),
        Container(color: clrarrr[6],),
        Container(color: clrarrr[7],),
        ],
      )
    );
  }
}