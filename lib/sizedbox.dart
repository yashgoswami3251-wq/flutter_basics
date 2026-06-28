import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';
import 'package:flutter_basics/ui_helper/util.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';

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
        appBar:  AppBar(
          title: Center(child: Text("SizedBox")),
          backgroundColor: Colors.blueGrey,
        ),

        body: Wrap(
          children: [
            SizedBox.square(
              dimension: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // or 0 for sharp corners
                  ),
                ),
                child: Text("Click"),
              )
            ),
            SizedBox(width: 50,),
            SizedBox.square(
              dimension: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // or 0 for sharp corners
                  ),
                ),
                child: Text("Click"),
              )
            ),
            SizedBox(width: 50,),
            SizedBox.square(
              dimension: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // or 0 for sharp corners
                  ),
                ),
                child: Text("Click"),
              )
            ),
          ],
        )

        /*
        // SizedBox.shrink automatically taken minimum hight and minimumwidth
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: 50,
                minWidth: 200,
                maxHeight: 100,
                maxWidth: 300,
            ),
            child: SizedBox.shrink(
              child: ElevatedButton(
                  onPressed: (){
                    print("Clicked");
                  }, child: Text("Click")),
            ),
          ),
        )
         */

        /*
        // SizedBox.expand taken automatically taken his parent maxHight and maxWidth dot't need to define height and width
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 30,
              minWidth: 100,
              maxHeight: 50,
              maxWidth: 200
            ),
            child: SizedBox.expand(
              child: ElevatedButton(
                  onPressed: (){
                    print("Clicked");
                  }, child: Text("Click")),
            ),
          ),
        )
        */
        
        /*    
        // Simple SizedBox taken automatically taken this parent height and width
        Center(
          child: SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                onPressed: (){
                  print("Clicked");
                  },child: Text("Click")),
          ),
        ) */
    );
  }
}