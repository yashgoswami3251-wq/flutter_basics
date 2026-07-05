import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/custom_widget.dart';
import 'package:flutter_basics/range_slider.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter",
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

  var weightController = TextEditingController();
  var heightController = TextEditingController();
  var inchesController = TextEditingController();
  var result = "";
  var bgcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("yourBMI")),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BMI",style: TextStyle(fontSize: 43,fontWeight: FontWeight.w700,color: Colors.teal.shade500),),
                SizedBox(height: 15,),

                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    label: Text("Enter you weight (in Kgs)",style: TextStyle(fontSize: 17),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 3
                      )
                    ),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: heightController,
                  decoration: InputDecoration(
                    label: Text("Enter your hight (in Feet)",style: TextStyle(fontSize: 17),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 3
                      )
                    ),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15,),

                TextField(
                  controller: inchesController,
                  decoration: InputDecoration(
                    label: Text("Enter you height (in Inches)",style: TextStyle(fontSize: 17),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 3
                      )
                    ),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 21,),

                ElevatedButton(
                    onPressed: (){
                      var weight = weightController.text.toString();
                      var height = heightController.text.toString();
                      var inches = inchesController.text.toString();

                      if(weight!="" && height!="" && inches!=""){

                        var intweight = int.parse(weight);
                        var intheight = int.parse(height);
                        var intinches = int.parse(inches);

                        var totalnches = (intheight*12) + intinches;

                        var totalcentimeter = totalnches*2.54;

                        var totalmeter = totalcentimeter/100;

                        var bmi = intweight/(totalmeter * totalmeter);

                        var message;

                        setState(() {

                          if(bmi>25){
                            message = "Your are OverWeight";
                            bgcolor = Colors.deepOrange.shade100;
                          }else if(bmi<18){
                            message = "Your UnderWeight";
                            bgcolor = Colors.red.shade300;
                          }else{
                            message = "Your Healthy";
                            bgcolor = Colors.green.shade200;
                          }

                          result = "${message} \n Your Bmi is s ${bmi.toStringAsFixed(3)}";
                        });

                      }else{
                        setState(() {
                          result = "Please Fill The Required Field..";
                        });
                      }

                    }, child: Text("Calculate")),

                SizedBox(height: 10,),

                Text(result,style: TextStyle(fontSize: 21,color: Colors.white),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}