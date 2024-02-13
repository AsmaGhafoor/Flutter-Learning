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
        
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
                bottom: 11,
                right: 11,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.greenAccent,
                ),
              )
            ],
          ),
        )
      );
    }
}