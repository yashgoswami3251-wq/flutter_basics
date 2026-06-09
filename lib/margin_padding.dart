import 'package:flutter/material.dart';
import 'package:flutter_basics/container_decoration.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "margin_padding",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
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
        title: Text("Welcome Yash"),
        backgroundColor: Colors.blueGrey.shade300,
      ),

      // Margin :- margin set outside container
      // Padding :- padding set inside container

      body: Container(
        color: Colors.blueGrey,
      //  margin: EdgeInsets.only(top: 24,right: 24,bottom: 24,left: 24),
          margin: EdgeInsets.all(12),

        child: Padding(
      //    padding: EdgeInsets.only(left: 12, top: 14, bottom: 15, right: 15),
          padding: EdgeInsets.all(14),
          child: Text("WElCOMe!!", style: TextStyle(fontSize: 25, color: Colors.white),),
        ),
      ),
    );
  }

}