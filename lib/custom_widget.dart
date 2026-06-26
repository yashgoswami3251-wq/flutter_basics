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

    return Scaffold(
        appBar:  AppBar(
          title: Center(child: Text("Custom Widget")),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Column(
            children: [
              CatgoryItems(),
              Userdetails(),
              Rectanglebox(),
              Squarebox(),
            ],
          ),
        )
    );
  }
}

class CatgoryItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.lightGreenAccent,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),itemCount: 10, scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class Userdetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.teal,
        child: ListView.builder(itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(backgroundColor: Colors.grey,),
          title: Text("Name"),
          subtitle: Text("Mob no"),
          trailing: Icon(Icons.call),
        )),
      ),
    );
  }
}

class Rectanglebox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.lightGreenAccent
            ),
          ),
        ),itemCount: 11, scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class Squarebox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey,
        child: GridView.count(crossAxisCount: 3, crossAxisSpacing: 11,mainAxisSpacing: 11,
          children: [
            Container(height: 100,width: 150,decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(11)),),
            Container(height: 100,width: 150,decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(11)),),
            Container(height: 100,width: 150,decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(11)),),
            Container(height: 100,width: 150,decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(11)),),
            Container(height: 100,width: 150,decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(11)),),
            Container(height: 100,width: 150,decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(11)),),
          ],),
      ),
    );
  }
}