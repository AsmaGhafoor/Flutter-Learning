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
  RangeValues values = const RangeValues(0, 1);
  
  @override
  Widget build(BuildContext context) {
    RangeLabels labels=RangeLabels(values.start.toString(),values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Title'),
        backgroundColor: Colors.teal.shade300,
      ),

      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          onChanged: (newValue){
            values=newValue;
            // ignore: avoid_print
            print('${newValue.start}, ${newValue.end}');
            setState( () {} );
          }
        ),
      )
      
    );
  }
}