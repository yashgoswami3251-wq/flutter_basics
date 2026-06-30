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

        body: Container(
          height: 500,
          width: 400,
          color: Colors.teal,
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                right: 100,
              //  right: ,
              //  top: ,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
    );
  }
}