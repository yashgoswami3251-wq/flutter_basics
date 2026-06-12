import 'package:flutter/material.dart';
import 'package:flutter_basics/circle_image.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card widget",
      debugShowCheckedModeBanner: false,
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
        title: Center(child: Text("Card Widget")),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(

        child: Card(
          shadowColor: Colors.pink,
          elevation: 5,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("YashGiri",style: TextStyle(fontSize: 8, fontStyle: FontStyle.italic),),
            )
        )
        ,
      ),
    );
  }

}