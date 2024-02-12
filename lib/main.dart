import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: DashboardScreen(),
    );
  }
}


// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  var arrColors=[
    Colors.amber,
    Colors.grey,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.purpleAccent,
    Colors.brown,
  ];

  DashboardScreen({super.key});
    @override
    Widget build(BuildContext context) {
      // ignore: unused_local_variable
      var time = DateTime.now();

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter'),
        ),
        
        body: GridView.count(
          crossAxisCount: 3,
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[0],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[1],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[2],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[3],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[4],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[5],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColors[6],),
            ),
          ]
        )
      );  
    }
}