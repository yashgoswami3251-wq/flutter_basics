import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

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

          // We can use anywhere this styles in application

          headlineLarge: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          headlineMedium: TextStyle(fontSize: 15, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),

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

            // Add some other styles extra with global styles then use !.copyWith

            Text("Text1",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white,backgroundColor: Colors.grey),),
            Text("Text1",style: Theme.of(context).textTheme.headlineLarge,),
            Text("Text1",style: Theme.of(context).textTheme.headlineMedium,),
            Text("Text1",style: mytextStyle11(textColor: Colors.lightBlue))
          ],
        ),
    );
  }
}