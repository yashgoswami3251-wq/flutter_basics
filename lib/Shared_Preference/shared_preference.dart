import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Animations/animated_container.dart';
import 'package:flutter_basics/Animations/cross_fade_animated.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(myflutter());
}

class myflutter extends StatelessWidget{
  const myflutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => myhomepage();
}

class myhomepage extends State<dashboard>{

  var nameContorller = TextEditingController();
  var ageContorller = TextEditingController();

  static const String KEYNAME = "Name";
  static const String KEYAGE = "Age";

  var namevalue = "No Value Saved";
  var agevalue = "No Age Saved";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shared Preference")),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: nameContorller,
                decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            width: 3
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 300,
              child: TextField(
                controller: ageContorller,
                decoration: InputDecoration(
                    hintText: "Enter Age",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            width: 3
                        )
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: () async{

                  var preference = await SharedPreferences.getInstance();
                  preference.setString(KEYNAME, nameContorller.text.toString());
                  preference.setString(KEYAGE, ageContorller.text.toString());

                }, child: Text("Save")),

            SizedBox(height: 10,),
            Text("Name :"+namevalue),
            Text("Age :"+agevalue),
          ],
        ),
      ),
    );
  }

  void getvalue() async {
    var preference = await SharedPreferences.getInstance();
    var getname = preference.getString(KEYNAME);
    var getage = preference.getString(KEYAGE);

    setState(() {
      namevalue = getname !=null ? getname : "No Value Saved";
      agevalue = getage !=null ? getage : "No Age Saved";
    });
  }
}


