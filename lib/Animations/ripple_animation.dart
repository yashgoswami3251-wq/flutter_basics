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
      title: "My Flutter",debugShowCheckedModeBanner: false,
      theme: ThemeData(
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

class mypage extends State<dashboard> with SingleTickerProviderStateMixin{

  late Animation _animation;
  late AnimationController _animationController;

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  void initState(){

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));
   // _animation = Tween(begin: 0.0,end: 1.0).animate(_animationController);

    _animationController.addListener((){
      setState(() {

      });
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ripple Effect")),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: listRadius.map((radius) => Container(
                width: radius*_animationController.value,
                height: radius*_animationController.value,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal.withValues(alpha: (1.0 - _animationController.value).clamp(0.0, 1.0)),),
              )).toList()
            ),

          ],
        ),
      )
    );
  }

}