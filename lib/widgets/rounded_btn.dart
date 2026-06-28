import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Roundedbtn extends StatelessWidget{
  final String btnname;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  Roundedbtn(
      {
        required this.btnname,
        this.icon,
        this.bgcolor = Colors.cyan,
        this.textStyle,
        this.callback
      });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          callback!();
        },
        child: icon!=null ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Text(btnname, style: textStyle)
          ],
        ): Text(btnname, style: textStyle),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          shadowColor: bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(21),bottomLeft: Radius.circular(21))
        )
      ),
    );
  }
}

// Practice

/*
class Roundbtn extends StatelessWidget{

  final String btnname;
  final Icon? icon;   // can be null
  final Color? bgcolor; // can be null
  final TextStyle? textStyle; // can be null
  final VoidCallback? callback; // can be null

  Roundbtn({required this.btnname, this.icon, this.bgcolor = Colors.blue, this.textStyle, this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          callback!();
        }, child: icon!=null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Container(width: 10,),
        Text(btnname, style: textStyle,)
      ],
    ):Text(btnname, style: textStyle,),
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
      shadowColor: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(21),
          bottomRight: Radius.circular(21),
        )
      )
    ),
    );
  }
}
 */