import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myhome_page.dart';

class IntroPage extends StatelessWidget{
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("WELCOME INTRO PAGE")),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME YASH",style: TextStyle(fontSize: 21),),
            SizedBox(height: 10,),
            Container(
              width: 200,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.teal
                    )
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>MyhomePage(name.text.toString()),));
                }, child: Text("NEXT"))
          ],
        ),
      ),
    );
  }

}