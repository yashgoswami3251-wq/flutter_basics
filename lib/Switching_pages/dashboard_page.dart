import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro_page.dart';

class DashboardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("WELCOME DASHBOARD PAGE")),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME DASHBOARD",style: TextStyle(fontSize: 21),),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>IntroPage(),));
                }, child: Text("NEXT"))
          ],
        ),
      ),
    );
  }

}