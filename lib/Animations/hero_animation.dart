import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';
import 'cross_fade_animated.dart';
import 'detail_page.dart';

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
        primarySwatch: Colors.lightGreen
      ),
      home: Yash(),
    );
  }
}

class Yash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hero Animation")),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder:
                    (context)=>MyHomepage(),));
              },
              
              child: Hero(
                  tag: "background",
                  child: Image.asset(
                    "assets/images/lamborghini.png",
                    height: 200,
                    width: 300,
                  )),
            )
          ],
        ),
      ),
    );
  }
}