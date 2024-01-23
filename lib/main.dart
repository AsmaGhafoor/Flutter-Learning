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
      // const Center(
      //   child: SizedBox(
      //     width: 100,
      //     height: 100,
      //     child: CircleAvatar(
      //       backgroundImage: AssetImage('assets/images/image1.jpg'),
      //       backgroundColor: Colors.green,
      //     ),
      //   ),
      // )
      Center(
        child: CircleAvatar(
          // ignore: sized_box_for_whitespace
          backgroundColor: Colors.green,
          maxRadius: 60,
          // ignore: sized_box_for_whitespace
          child: Container(
            width:70,
            height:70,
            child:Column(
              // ignore: sized_box_for_whitespace
              children: [Container(
                width:40,
                height:40,
                child:Image.asset('assets/images/image1.jpg')
              ),Text('Name', style:TextStyle(color:Colors.red[200]))],
            ),
          ),
        ),
      )
    );
  }
}
