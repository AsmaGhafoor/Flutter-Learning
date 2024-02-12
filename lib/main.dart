import 'package:flutter/material.dart';

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
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter'),
        ),
        
        body: Wrap(
          direction: Axis.vertical,
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(
              width: 70,
              height: 70,
              color: Colors.red[300],
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.yellow[400],
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.black45,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.pink[100],
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.teal,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.deepPurple[200],
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.green[200],
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.indigo,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.brown[400],
            ),
          ],
        ),
      );  
    }
}