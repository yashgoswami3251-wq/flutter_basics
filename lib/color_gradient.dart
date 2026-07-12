import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFlutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Gridient Colors")),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(

        // gradient used to mixture of Colors
        // 0x is a hax code ff is for visible color  00 is transparent

        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Color(0xffa8caba),
                Color(0xff5d4157)
              ],
            begin: FractionalOffset(1.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            stops: [0.0,1.0]
          )

          /*
          // RadialGradient is provide stating cld to center you align top,bottom,right,left

          gradient: RadialGradient(
            colors:[
            Color(0xffa8caba),
            Color(0xff5d4157)
          ],
          center: Alignment.topCenter
          )
          */

        ),
      ),
    );
  }

}