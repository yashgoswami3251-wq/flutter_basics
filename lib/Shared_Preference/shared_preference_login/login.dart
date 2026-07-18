import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';
import 'package:flutter_basics/Shared_Preference/shared_preference_login/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => loginState();
}

class loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login page",debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("LOGIN")),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_outline,size: 100,color: Colors.green,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 3
                      )
                    )
                  ),
                ),

                SizedBox(height: 10,),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 3
                      )
                    )
                  ),
                ),

                SizedBox(height: 10,),

                ElevatedButton(
                    onPressed: () async {

                      // If successfully Logged in (crendentials are correct)

                      var sharedPre = await SharedPreferences.getInstance();
                      sharedPre.setBool(myflutterState.KEYLOGIN, true);

                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                          builder: (context)=>homepage()),);

                    }, child: Text("LOGIN"))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
