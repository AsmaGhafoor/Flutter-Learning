import 'package:flutter/material.dart';
// import 'package:flutterapp/intropage.dart';
import 'package:flutterapp/splashscreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Title'),
        backgroundColor: Colors.teal.shade300,
      ),

      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 240,
          maxHeight: 100,
        ),
        child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ves bibendum dui. Etiam semper imperdiet molestie.', 
        style: TextStyle(
          fontSize: 21, 
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        )
      ),
      
    );
  }
}