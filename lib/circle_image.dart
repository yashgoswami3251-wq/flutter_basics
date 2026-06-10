import 'package:flutter/material.dart';
import 'package:flutter_basics/container_decoration.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Circular Image")),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.png'),
        //  backgroundColor: Colors.white12,
        //  minRadius: 50,
        //  radius: 80,
            maxRadius: 70,
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade100,
    );
  }

}