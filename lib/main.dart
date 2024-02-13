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
        child: ListWheelScrollView(
          itemExtent: 100,
          // children: [
            // Container(
            //   width: 100,
            //   color: Colors.teal.shade700,
            // ),
          // ],
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade700,
                  borderRadius: BorderRadius.circular(21)
                ),
                child: Center(child: Text('$value', style: const TextStyle(fontSize: 21),)),
            ),
          )).toList(),
        ),
      )
    );
  }
}