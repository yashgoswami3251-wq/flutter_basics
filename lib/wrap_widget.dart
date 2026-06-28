import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/ui_helper/util.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';

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
          title: Center(child: Text("Create Custom Widget")),
          backgroundColor: Colors.blueGrey,
        ),

        // Wrap widget used to your content overlap then this widget automatically set into new line you not need scroller
        // by default Wrap widget direction is horizontal

        body:Container(
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 12,
            runSpacing: 13,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreen,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),Container(
                height: 100,
                width: 100,
                color: Colors.brown,
              ),Container(
                height: 100,
                width: 100,
                color: Colors.tealAccent,
              ),Container(
                height: 100,
                width: 100,
                color: Colors.teal,
              ),Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        )
    );
  }
}