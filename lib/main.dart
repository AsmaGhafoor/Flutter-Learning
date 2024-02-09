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
    // ignore: unused_local_variable
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter'),
      ),
      
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Date is: ${time.day}',style: const TextStyle(fontSize: 20),),
              Text('Month is: ${time.month}',style: const TextStyle(fontSize: 20),),
              Text('Year is: ${time.year}',style: const TextStyle(fontSize: 20),),
              Text('Time is: $time',style: const TextStyle(fontSize: 20),),
              ElevatedButton(
              onPressed: () {
                // setState((){
                  
                // });
              },
          child: const Text('Press me'), // Add child widget to display text on the button
        ),
            ],
          ),
        ),
      )
    );  
  }
}