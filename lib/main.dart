// ignore: unused_import
import 'dart:js_interop_unsafe';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
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
        
        body: SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
              ),
          
              Positioned(
                left: 21,
                top: 21,
                // bottom:21,
                // right: 21,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      );  
    }
}