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

<<<<<<< HEAD
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* Input fields*/
 
=======
// ignore: use_key_in_widget_constructors
class DashboardScreen extends StatelessWidget {
>>>>>>> 16204cc33203b68351a297075436a1f7900a5f08
  @override
  Widget build(BuildContext context) {
     var emailText=TextEditingController();
     var passText=TextEditingController();

    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
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
=======
        title: const Text("Dashboard"),
      ),
      body:  
      // const Text(
      //     'Hello',style: TextStyle(fontFamily: 'FontMain', fontSize: 24),
      // )
      const Text( 'Hello World',
       style: TextStyle(fontFamily: 'FontMain', fontSize: 44),
      )

>>>>>>> 16204cc33203b68351a297075436a1f7900a5f08
    );
  }
}
