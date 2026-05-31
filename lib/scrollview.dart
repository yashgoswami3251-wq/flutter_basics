import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Flutter ScroolerView'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),

          // Used for Vertical Scroll view
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  // Used for Horizontal Scroll view
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                                height: 200,
                                  width: 200,
                                  color: Colors.blueGrey,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.amber,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.greenAccent,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.pinkAccent,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.lightGreen,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.deepOrangeAccent,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.greenAccent,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.deepOrange,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                        Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.lightGreen,
                                  margin: EdgeInsets.only(right: 20),
                                ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 11),
                  color: Colors.pinkAccent,
                ),Container(
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 11),
                  color: Colors.grey,
                ),Container(
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 11),
                  color: Colors.blue,
                ),Container(
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 11),
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ),
        )
    );
  }
}
