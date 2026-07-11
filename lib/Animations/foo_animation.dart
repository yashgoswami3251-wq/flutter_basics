import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/custom_widget.dart';
import 'package:flutter_basics/range_slider.dart';

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
        primarySwatch: Colors.blueGrey
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myhomepage();
}

class myhomepage extends State<dashboard>{

  var myopacity = 1.0;
  bool isvisible = true;
  var btn = "VISIBLE";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("FOO ANIMATION")),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myopacity, duration: Duration(seconds: 1),child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.lightGreen,
              ),
            ),),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){

                  setState(() {
                    if(isvisible){
                      myopacity = 1.0;
                      btn = "INVISIBLE";
                      isvisible = false;
                    }else{
                      myopacity = 0.0;
                      btn = "VISIBLE";
                      isvisible = true;
                    }
                  });

                }, child: Text("$btn",style: TextStyle(fontSize: 24,color: Colors.black),))
          ],
        ),
      ),
    );
  }

}