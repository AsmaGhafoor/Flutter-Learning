// ignore: unused_import
import 'dart:js_interop_unsafe';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:flutterapp/widgets/rounded_btn.dart';
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
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 70,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: const Icon(Icons.play_arrow),
                  callBack: (){
                    // ignore: avoid_print
                    print('Logged in');
                  },
                  textStyle: const TextStyle(),
                ),
              ),
              const SizedBox(height: 11,),

              SizedBox(
                width: 150,
                height: 70,
                child: RoundedButton(
                  btnName: 'Press',
                  icon: const Icon(Icons.play_arrow),
                  callBack: (){
                    // ignore: avoid_print
                    print('Logged in');
                  },
                  bgColor: Colors.orange,
                  textStyle: const TextStyle(),
                  iconColor: Colors.white,
                ),
              ),

            ],
          ),
        )
      );  
    }
}