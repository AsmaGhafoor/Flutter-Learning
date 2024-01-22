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
      theme: ThemeData(primarySwatch: Colors.blue),
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
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black38,
            child: Center(
                child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 11, color: Colors.green, spreadRadius: 7)
                  ],
                  shape: BoxShape.circle),
            ))));
  }
}
