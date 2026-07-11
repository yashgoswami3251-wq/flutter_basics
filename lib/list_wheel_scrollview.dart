import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/custom_widget.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Flutter",
      theme:  ThemeData(
          primarySwatch: Colors.teal
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => mypage();
}

class mypage extends State<dashboard>{

  var arrindex = [
    1,2,3,4,5,6,7,8,9,10
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Center(child: Text('List Wheel Scrollview')),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrindex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text("$value",style: TextStyle(fontSize: 34,color: Colors.white),)),
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(11)
              ),
            ),
          )).toList(),

        ),
      )
    );
  }
}