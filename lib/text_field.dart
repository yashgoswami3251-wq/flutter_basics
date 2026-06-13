import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/card.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Field",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var email = TextEditingController();
    var paasword = TextEditingController();
    var mobileno = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Text Field")),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Container(
            width: 300,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  TextField(
                  // enabled: false,

                    controller: email,

                    decoration: InputDecoration(
                      hintText: "Enter a Email",
                      // Whenever you clicked on this textField then color red
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 3
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 3
                        ),
                      ),

                      // This border applied whenver your text field id enable : false, --> disable
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black38
                        ),
                      ),

                  //  suffixText: "Username exist",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye_outlined),
                        onPressed: (){},
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),

                  Container(height: 8,),

                  TextField(
                    controller: paasword,
                    obscureText: true,
               
               // you want to diff hiiden symbol
               //   obscuringCharacter: "*",

                    decoration: InputDecoration(
                      hintText: "Enter a password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),

                  Container(height: 8,),

                  TextField(
                    keyboardType: TextInputType.phone,
                    controller: mobileno,
                    obscureText: true,
                    obscuringCharacter: '*',

                    decoration: InputDecoration(
                      hintText: 'Enter a mobile No',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.greenAccent
                        )
                      ),
                      prefixIcon: Icon(Icons.phone)
                    ),
                  ),

                  Container(height: 10,),

                  ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Login"),
                    ),
                    onPressed: (){
                      String uEmail = email.text.toString();
                      String upass = paasword.text;
                      String Umob = mobileno.text;

                      print("Email: $uEmail , Password: $upass , MobileNo: $Umob");
                    },
                  ),
                ],

              )
          ),
      ),
    );
  }

}