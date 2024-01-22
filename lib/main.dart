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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.black45,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.lightGreen,
              ),
            ),
            Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.redAccent,
              ),
            ),
            Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.orangeAccent,
              ),
            )
          ],
        ));
  }
}
