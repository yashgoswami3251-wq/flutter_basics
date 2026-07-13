import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';
import 'package:flutter_basics/Animations/cross_fade_animated.dart';
import 'package:flutter_basics/card.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFlutter",debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myhomepage();
}

class myhomepage extends State<dashboard>{

  var names = [
    {
      "Name" :"Yash",
      "Mob no" : "9316934085",
      "Address" : "Bhavanagar"
    },{
      "Name" :"Jay",
      "Mob no" : "9909207048",
      "Address" : "Junagadh"
    },{
      "Name" :"Marmik",
      "Mob no" : "9316935678",
      "Address" : "Upleta"
    },{
      "Name" :"Khush",
      "Mob no" : "9340424085",
      "Address" : "Junagadh"
    },{
      "Name" :"Pritesh",
      "Mob no" : "9316675485",
      "Address" : "Dwarka"
    },{
      "Name" :"Kabir",
      "Mob no" : "9316124085",
      "Address" : "Porbandar"
    },{
      "Name" :"Dev",
      "Mob no" : "9936934085",
      "Address" : "Ahemdabad"
    },{
      "Name" :"Rudr",
      "Mob no" : "9316938975",
      "Address" : "Gandhinagar"
    },{
      "Name" :"Bhavesh",
      "Mob no" : "9316934085",
      "Address" : "Surat"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mapping List")),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: names.map((value) {
          return ListTile(
            leading: Icon(Icons.other_houses_rounded),
            title: Text(value['Name'].toString()),
            subtitle: Text(value['Mob no'].toString()),
            trailing: Text(value['Address'].toString(),style: TextStyle(fontSize: 15,color: Colors.blueAccent),),
          );
        }).toList()
      ),
    );
  }
}