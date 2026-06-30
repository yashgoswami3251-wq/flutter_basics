import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/custom_widget.dart';

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
      appBar: AppBar(
        title: Center(child: Text("Font Awesome Icons",style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_circle),
            SizedBox(width: 10,),
            // FaIcon is not a by default te FontAwesome library provided hovi joiye
            FaIcon(FontAwesomeIcons.amazon),
            SizedBox(width: 10,),
            FaIcon(FontAwesomeIcons.microsoft),
            SizedBox(width: 10,),
            FaIcon(FontAwesomeIcons.googlePay),
            SizedBox(width: 10,),
            FaIcon(FontAwesomeIcons.solidFilePowerpoint),
          ],
        ),
      ),
    );
  }
}