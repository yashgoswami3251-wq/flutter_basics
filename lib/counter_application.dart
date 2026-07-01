import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/callback_function.dart';

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
        primarySwatch: Colors.teal
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage>{

  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Counter Application")),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count : $count",style: TextStyle(fontSize: 34,fontWeight: FontWeight.normal),),
            Container(height: 10,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    count++;
                  });
                }, child: Container(
              width: 150,
                  child: Row(
                    children: [
                      Text("CounterButton"),
                      Container(width: 10,),
                      Icon(Icons.plus_one_outlined)
                    ],
                  ),
                )),
          ],
        ),
      )
    );
  }
  
}