import 'package:flutter/material.dart';
import 'package:flutter_basics/container_decoration.dart';

// list tile mainly four properties leading , title , subtitle , trailing

void main(){
  runApp(myflutter());
}


class myflutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List_tile",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var arrnames = ["yash","kishan","viru","jay","khush","pritesh","yash","kishan","viru","jay","khush","pritesh"];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("List Tile")),
      ),

      body: Container(

        color: Colors.blueGrey,
        child: ListView.separated(itemBuilder: (context,index){

          return ListTile(

            leading: Text('${index+1}',style: TextStyle(color: Colors.white),),
            title: Text(arrnames[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
            subtitle: Text('Mobile No',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.add),

          );
        },

          itemCount: arrnames.length,
          separatorBuilder: (context,index){
          return Divider(height: 10,thickness: 2);
          },

        ),
      ),
    );
  }

}