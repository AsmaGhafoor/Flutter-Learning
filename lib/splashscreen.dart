import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState()=>SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();

    Timer(const Duration(seconds:5), () { 
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => const MyHomePage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade300,
        child: const Center(
          child: Text('Classico', style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}