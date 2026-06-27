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

    return Scaffold(
        appBar:  AppBar(
          title: Center(child: Text("Stack")),
          backgroundColor: Colors.blueGrey,
        ),

        // Stack automatically take height or width out child widget

        body: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amberAccent,
            ),

            Container(
              height: 160,
              width: 160,
              color: Colors.grey,
            ),

            // You can set spacing using Positioned widget spacling like left,right,top,bottom

            Positioned(
              left: 70,
              top: 21,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.teal,
              ),
            )
          ],
        )
    );
  }
}