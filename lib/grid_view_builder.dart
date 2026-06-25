import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: dashboard(),
    );
  }
}



class dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var clrarrr = [
      Colors.tealAccent,
      Colors.greenAccent,
      Colors.green,
      Colors.red,
      Colors.blueAccent,
      Colors.lightGreen,
      Colors.amberAccent,
      Colors.lightGreenAccent
    ];

    return Scaffold(
        appBar:  AppBar(
          title: Center(child: Text("Hello yash")),
          backgroundColor: Colors.blueGrey,
        ),

        // extent is take width you add like you add 40 then all container 40 width here you rotate phone then see diff..

        // Here you can use count and extent two 
        // You can create gridview.builder 
        
        body: GridView.builder(itemBuilder: (context, index){
          return Container(color: clrarrr[index],);
        },itemCount: clrarrr.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 11, mainAxisSpacing: 11),
        )
        
        // SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100, crossAxisSpacing: 11, mainAxisSpacing: 11),
        // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 11, mainAxisSpacing: 11),
    );
  }
}