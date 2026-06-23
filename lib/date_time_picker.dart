import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select Date",style: TextStyle(fontSize: 24),),

            ElevatedButton(
                onPressed: () async {
                  DateTime?  datetimepick= await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2030));

                  if(datetimepick!=null){
                     print("date Selected:${DateFormat('yMMMMEEEEd').format(datetimepick)}");
                   //  print("date Selected:${datetimepick.day}:${datetimepick.month}:${datetimepick.year}");
                  }
            }, child: Text("Date Picker")),

            Container(height: 10,),

            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timepick = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input
                  );

                  if(timepick!=null){
                    print("Time : ${timepick.hour}:${timepick.minute  }");
                  }

            }, child: Text("Time Picker"))
          ],
        ),
      )
    );
  }
}