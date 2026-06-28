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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                child: Roundedbtn(
                  btnname: "Click",
                  icon: Icon(Icons.lock),
                  callback: (){print("Logged in..");},
                  textStyle: mytextStyle16(),
                ),
              ),
              Container(height: 10,),
              Container(
                width: 120,
                child: Roundedbtn(
                  btnname: "Play",
                  icon: Icon(Icons.play_circle),
                  callback: (){print("Logged in..");},
                  textStyle: mytextStyle16(),
                  bgcolor: Colors.amberAccent,
                ),
              ),
              Container(height: 10,),
              Container(
                width: 120,
                child: Roundedbtn(
                  btnname: "Press",
                  callback: (){print("Logged in..");},
                  textStyle: mytextStyle16(),
                  bgcolor: Colors.blueGrey,
                ),
              ),
            ],
          ),
        )


        /*
        Center(
          child: Container(
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Roundbtn(btnname: 'Click', icon: Icon(Icons.play_circle), textStyle: mytextStyle16(), callback: (){print("Clicked");},),
                Roundbtn(btnname: 'Call', icon: Icon(Icons.call), textStyle: mytextStyle16(), callback: (){print("Clicked");},),
                Roundbtn(btnname: 'Calling', callback: (){print("Clicked");}, bgcolor: Colors.lightGreenAccent,textStyle: mytextStyle21()),
              ],
            ),
          ),
        )
        */
    );
  }
}