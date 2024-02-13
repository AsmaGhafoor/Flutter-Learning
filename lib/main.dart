import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
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
  var arrIndex =[1,2,3,4,5,6,7,8,9,10];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Title'),
        backgroundColor: Colors.teal.shade300,
      ),

      body: Center(
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(21),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(21), 
            bottomRight: Radius.circular(21)
          ),
          // borderRadius: const BorderRadius.all(Radius.elliptical(71, 11)),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.teal.shade700,

          ),
        ),
      )
    );
  }
}