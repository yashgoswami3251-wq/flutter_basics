import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/custom_widget.dart';
import 'package:flutter_basics/small_projects/bmi_application.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter',
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

  var crossfade = CrossFadeState.showFirst;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cross Fade Animated")),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              secondChild: Image.asset(
                  'assets/images/lamborghini.png',
                height: 200,
                width: 200,
              ),
              // sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.bounceInOut,
              secondCurve: Curves.fastOutSlowIn,
              crossFadeState: crossfade,
            ),
          ),

          SizedBox(height: 10,),

          ElevatedButton(
              onPressed: (){
                setState(() {
                  if(flag){
                    crossfade =  CrossFadeState.showFirst;
                    flag = false;
                  }
                  else{
                    crossfade =  CrossFadeState.showSecond;
                    flag = true;
                  }
                });
              }, child: Text("Click"))
        ],
      ),
    );
  }
}