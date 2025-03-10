
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First Flutter App'),
              backgroundColor: Colors.blue,
              actions: const[
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.info)
                )
              ]
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.people),
                    title: const Text('People'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: const Icon(Icons.train),
                    title: const Text('Train'),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: const Icon(Icons.bike_scooter),
                    title: const Text('Bike'),
                    onTap: (){},
                  ),


                ],
              )
            ),
            body: Center(
              child: Text('Hello, Flutter!',
                style: TextStyle(fontSize: 24),
              ),
            )
        )
    );
  }
}

