// ignore: unused_import
import 'dart:js_interop_unsafe';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
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
        
        body: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
              ),
          
              Positioned(
                left: 21,
                top: 21,
                // bottom:21,
                // right: 21,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      );  
    }
}






class StoriesItems extends StatelessWidget{
  const StoriesItems({super.key});
  
  @override
  Widget build(Object context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.indigo[200],
        child: ListView.builder(itemBuilder: (context,index) => 
        const Padding(
          padding: EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(backgroundColor: Colors.green),
          ),
        ), itemCount: 10,scrollDirection: Axis.horizontal,
      ),
      ),
    );
  }
}

class Contact extends StatelessWidget{
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.lightBlue[100],
        child: ListView.builder(itemBuilder: (context,index) => 
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text('Name'),
            subtitle: Text('Mobile No'),
            trailing: Icon(Icons.delete),
          ),
        )),
      ),
    );
  }
}

class SubCategoryItems extends StatelessWidget{
  const SubCategoryItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red[100],
        child: ListView.builder(itemBuilder: (context,index) =>
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue,
              ),
            ),
          ),  
          itemCount:10, 
          scrollDirection:Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget{
  const BottomMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.teal[700],
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}