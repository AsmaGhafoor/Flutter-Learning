import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        //tested a new comment
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            height: 200,
                            width: 100,
                            color: Colors.orange,
                            margin: const EdgeInsets.only(right: 11)),
                        Container(
                            height: 200,
                            width: 150,
                            color: Colors.grey,
                            margin: const EdgeInsets.only(right: 11)),
                        Container(
                            height: 200,
                            width: 200,
                            color: Colors.pink,
                            margin: const EdgeInsets.only(right: 11)),
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                    margin: const EdgeInsets.only(bottom: 11)),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                    margin: const EdgeInsets.only(bottom: 11))
              ],
            ),
          ),
        ));
  }
}
