import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
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
        title: Text("Dashboard"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey,

        child: Center(
          child: Container(
            height: 150,
            width: 150,

            decoration: BoxDecoration(

              color: Colors.greenAccent,

            //  borderRadius: BorderRadius.circular(12)
            //  borderRadius: BorderRadius.only(topLeft: Radius.circular(21) , bottomRight: Radius.circular(21))
            //  borderRadius: BorderRadius.all(Radius.circular(12)),

              border: Border.all(
                  width: 2,
                  color: Colors.white
            ),

              boxShadow: [
                BoxShadow(
                  blurRadius: 22,
                  color: Colors.blue,
                  spreadRadius: 12,
                ),
              ],

              // Whenever you provide already border radius then you don't applied box shape

              shape: BoxShape.circle

            ),
          ),
        ),
        
      ),
    );
  }

}