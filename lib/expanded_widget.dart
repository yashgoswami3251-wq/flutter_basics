import 'package:flutter/material.dart';
import 'package:flutter_basics/container_decoration.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ExpandedWidget(),
    );
  }
}

class ExpandedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded widget"),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: double.infinity,
        width: double.infinity,

        child: Row(
          children: [

              Container(
                height: 50,
                width: 100,
                color: Colors.blue,
              ),

              Container(
                height: 50,
                width: 100,
                color: Colors.green,
              ),

          // Expanded is a widget used inside Row, Column, or Flex to make a child widget occupy the remaining available space.
          // This container carry space 100 out of 40 percentage space

            Expanded(
              flex: 4,
              child: Container(
                height: 50,
                width: 100,
                color: Colors.pinkAccent,
              ),
            ),

          // This container also carry space 100 out of 40 percentage space
            Expanded(
              flex: 4,
              child: Container(
                height: 50,
                width: 100,
                color: Colors.brown,
              ),
            )

          ],
        ),
      ),
    );
  }

}