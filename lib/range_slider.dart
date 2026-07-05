import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/custom_widget.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
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

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Range Slider")),
        backgroundColor: Colors.grey,
      ),
      body:Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            min: 0,
            max: 100,
            activeColor: Colors.teal,
            inactiveColor: Colors.teal.shade100,
            onChanged: (newValue){
              setState(() {
              values = newValue;
              print("${newValue.start.toString()} , ${newValue.end.toString()}");
              });
            }
        ),
      ),
    );
  }
}