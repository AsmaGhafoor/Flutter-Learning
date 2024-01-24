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
  /* Input fields*/
 
  @override
  Widget build(BuildContext context) {
     var emailText=TextEditingController();
     var passText=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter'),
      ),
      
      body: 
      // const Center(
      //   child: Card(
      //     shadowColor: Colors.green,
      //     elevation: 12,
      //     child: Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('hello world', style: TextStyle(fontSize: 25),
      //       ),
      //     ),
      //   ),
      // ),

      Center(child: SizedBox(
        width:300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: emailText,

              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                  color:Colors.blueAccent,
                  width: 2,
                  )
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                  color:Colors.blueAccent,
                  width: 2,
                  )
                ),
                suffixText: 'User exist',
                suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye, color:Colors.orange),onPressed: (){},),
                prefixIcon: IconButton(icon: const Icon(Icons.email, color: Colors.orange), onPressed: () {  },)
              ),
            ),
            
            Container(height: 11,),

            TextField(
              controller: passText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                    color:Colors.deepOrange
                  )
                )
              ),
            ),


            ElevatedButton(onPressed: (){
              // ignore: unused_local_variable
              String uEmail=emailText.text.toString();
            }, child: const Text('Login'))

          ],
        )
      )
      )
    );
  }
}
