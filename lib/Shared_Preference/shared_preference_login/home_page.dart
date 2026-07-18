import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Shared_Preference/shared_preference_login/login.dart';
import 'package:flutter_basics/Shared_Preference/shared_preference_login/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => homepageState();
}

class homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Page",debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("HOME PAGE")),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
            child: Column(
              children: [
                Icon(Icons.home,size: 400,color: Colors.indigo.shade100,),
                Text("Your Already Loggedin.."),
                Padding(
                  padding: const EdgeInsets.only(top: 300,left: 250),
                  child: ElevatedButton(
                      onPressed: ()async{

                        var sharedPre = await SharedPreferences.getInstance();
                        sharedPre.setBool(myflutterState.KEYLOGIN, false);

                        Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context)=>login()),);

                      }, child: Text("LOGOUT")),
                )
              ],
            )),
      ),
    );
  }
}
