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
      title: "My Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>  myhomepage();
}

class myhomepage extends State<dashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ClipRrect")),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(

        // ClipRRect is used to design img , Container

        child: ClipRRect(
          borderRadius:BorderRadius.only(topLeft: Radius.circular(51),bottomRight: Radius.circular(31)),
          child: Image.asset(
            'assets/images/motivation.jpg',
          ),
        ),
      ),
    );
  }
}