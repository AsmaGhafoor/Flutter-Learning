import 'package:flutter/material.dart';
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
      home: DashboardScreen(),
    );
  }
}


// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  callBack(){
    // ignore: avoid_print
    print('Clicked');
  }

  const DashboardScreen({super.key});
    @override
    Widget build(BuildContext context) {
      // ignore: unused_local_variable
      var time = DateTime.now();

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter'),
        ),
        
        body: ElevatedButton(
        child: const Text('Click me'),
        // onPressed: () { 
        //   // ignore: avoid_print
        //   print('Clicked');
        //  },
        onPressed: callBack,
        )
      );  
    }
}