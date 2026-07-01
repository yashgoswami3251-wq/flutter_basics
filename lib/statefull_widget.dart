import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/counter_application.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage>{

  var num1controller = TextEditingController();
  var num2controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("StateFull",style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
                decoration: InputDecoration(
                  hintText: "Enter number 1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.blue
                    )
                  )
                ),
              ),
            ),

            Container(height: 10,),

            Container(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
                decoration: InputDecoration(
                  hintText: "Enter Number 2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.blue
                    )
                  )
                ),
              ),
            ),

            Container(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        var no1 = int.parse(num1controller.text);
                        var no2 = int.parse(num2controller.text);

                        var sum = no1 + no2;
                        result = "The sum of $no1 and $no2 = $sum";
                      });
                    }, child: Text("Sum")),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        var no1 = int.parse(num1controller.text);
                        var no2 = int.parse(num2controller.text);

                        var sub = no1 - no2;
                        result = "The Subtraction of $no1 and $no2 = $sub";
                      });
                    }, child: Text("SubTraction")),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        var no1 = int.parse(num1controller.text);
                        var no2 = int.parse(num2controller.text);

                        var mul = no1 * no2;
                        result = "The Multiplication of $no1 and $no2 = $mul";
                      });
                    }, child: Text("Multiplication")),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        var no1 = int.parse(num1controller.text);
                        var no2 = int.parse(num2controller.text);

                        var div = no1 / no2;
                        result = "The Division of $no1 and $no2 = ${div.toStringAsFixed(2)} times";
                      });
                    }, child: Text("Division")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(result,style: TextStyle(fontSize: 25,color: Colors.black),),
            )
          ],
        ),
      )
    );
  }
}