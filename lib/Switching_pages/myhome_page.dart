import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Switching_pages/splash_screen.dart';
import 'package:flutter_basics/card.dart';

import 'dashboard_page.dart';
import 'intro_page.dart';

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
      home: SplashScreen(),
    );
  }
}

class MyhomePage extends StatelessWidget{

  var username;
  MyhomePage(this.username);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:  AppBar(
          title: Center(child: Text("MY Home Page")),
          backgroundColor: Colors.blueGrey,
        ),

        // Stack automatically take height or width out child widget

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 300,
                color: Colors.blue,
                child: Center(child: Text("WELCOME $username",style: TextStyle(fontSize: 21,color: Colors.white),)),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                // In Navigator.push is give a backpress icon option

                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>DashboardPage(),));
                  }, child: Text("NEXT"))
            ],
          ),
        )
    );
  }
}