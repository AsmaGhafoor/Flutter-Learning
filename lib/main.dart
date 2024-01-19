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
  var arrNames = ['Asma', 'flutter', 'JavaScript', 'React', 'React Native'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 60,
              thickness: 4,
            );
          },
        ));
  }
}
