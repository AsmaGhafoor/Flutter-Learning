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
        
        body: 
        // const Row(
        //   children: [
        //     Text('Hello ', style: TextStyle(fontSize: 18, color: Colors.grey,),),
        //     Text('World', style: TextStyle(fontSize: 34, color: Colors.blue, fontWeight: FontWeight.bold),)
        //   ],
        // )
        RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 21,
            ),
            children: [
              TextSpan(text: 'Hello', ),
              TextSpan(text: 'World ', style: TextStyle(
                fontSize: 34,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              )),
              TextSpan(
                text:'Welcome to ', 
              ),
              TextSpan(
                text:'Flutter ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 43,
                  color: Colors.deepOrange,
                )
              )
            ]
        ),
        )
      );  
    }
}