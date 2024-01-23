import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
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

// ignore: use_key_in_widget_constructors
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: 
      // const Padding(
      //   // padding:EdgeInsets.all(11),
      //   padding: EdgeInsets.only(top: 11, left: 34),
      //   child: Text( 'Hello world', style: TextStyle(fontSize: 25)),
      // ),

      Container(
        color:Colors.brown[200],
        child:const Text('Hello world', style:TextStyle(fontSize: 25),)
      )
    );
  }
}
