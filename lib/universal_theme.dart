// Create demo application fluuter for practice

import 'package:flutter/material.dart';

void main(){
  runApp(Myflutterapp());
}

class Myflutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          headlineMedium: TextStyle(fontSize: 15, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)
        )
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
        title: Center(
            child: Text("Dashboard"),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body:Column(
          children: [
            Text("Text1",style: Theme.of(context).textTheme.headlineMedium,),
            Text("Text1",style: Theme.of(context).textTheme.headlineLarge,),
            Text("Text1",style: Theme.of(context).textTheme.headlineMedium,),
            Text("Text1",style: Theme.of(context).textTheme.headlineLarge,)
          ],
        ),
    );
  }
}