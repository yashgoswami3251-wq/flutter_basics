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

  var _height = 100.0;
  var _width = 200.0;
  var flag = true;

  Decoration mydecor = BoxDecoration(
    borderRadius: BorderRadius.circular(21),
    color: Colors.blue
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Center(child: Text('Animated Container')),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                height: _height,
                width: _width,
                decoration: mydecor,
                curve: Curves.bounceIn, // fastOutSlowIn ,slowMiddle , bounceOut
                duration: Duration(seconds: 2)
            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){

                  setState(() {
                    if(flag){
                      _height = 200;
                      _width = 100;
                      mydecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.red
                      );
                      flag = false;
                    }
                    else{
                      _height = 100;
                      _width = 200;
                      mydecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.green
                      );
                      flag = true;
                    }

                  });

                }, child: Text("Animate Now"))
          ],
        ),
      ),
    );
  }
}