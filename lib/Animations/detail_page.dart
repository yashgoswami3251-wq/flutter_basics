import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Switching_pages/myhome_page.dart';
import 'animated_container.dart';
import 'hero_animation.dart';

class MyHomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Detail")),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Yash(),));
              },

              child: Hero(
                  tag: "background",
                  child: Image.asset(
                    "assets/images/lamborghini.png",
                    height: 400,
                    width: 400,)),
            ),
          ],
        ),
      ),
    );
  }
}
