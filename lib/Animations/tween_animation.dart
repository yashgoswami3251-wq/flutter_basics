import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

  late Animation animation;
  late Animation animationcolor;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0,end: 200.0).animate(animationController);
    animationcolor = ColorTween(begin: Colors.orange,end: Colors.indigo).animate(animationController);

    animationController.addListener((){
        setState(() {
          animation.value;
          animationcolor.value;
        });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Tween Animation")),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: animationcolor.value,
        ),
      ),
    );
  }
}