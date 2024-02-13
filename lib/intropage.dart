import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro Page'),
      ),

      body: Container(
        color: Colors.teal.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Welcome', style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 11,),
          
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  )
                );
              }, child: const Text('Next'))
            ],
          ),
        ),
      ),

    );
  }
}