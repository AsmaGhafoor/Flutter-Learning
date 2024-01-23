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
    var arrNames=['HTML','CSS','JavaScript','React'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: Text('${index+1}'),
          title:Text(arrNames[index]),
          subtitle: const Text('Number'),
          trailing:const Icon(Icons.add),
        );
      }, 
      itemCount: arrNames.length, 
      separatorBuilder: (context,index){
      return const Divider(height: 20,thickness:1,);
      },
      )
    );
  }
}
