import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF2F2F2)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonText = 'Login';
  bool isVerified = false;

  void changeText() {
    if (isVerified) {
      setState(() {
        buttonText = 'Logedin';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
        backgroundColor: Colors.blue,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.info),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('People'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.train),
              title: const Text('Train'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.bike_scooter),
              title: const Text('Bike'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login to your Account',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),

            // Wrap the text fields inside a Column instead of SizedBox
            SizedBox(
              width: 315,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10), // Spacing between fields
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter some Text";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20), // Spacing before verification
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isVerified,
                  onChanged: (bool? value) {
                    setState(() {
                      isVerified = value ?? false;
                    });
                  },
                ),
                Text("I'm not a robot"),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isVerified ? changeText : null,
              child: Text(buttonText),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.network('https://53.fs1.hubspotusercontent-na1.net/hubfs/53/image8-2.jpg', height: 50),
              Image.asset('assets/images/naflan-favicon.png'),
            ],
            )
          ],
        ),
      ),
    );
  }
}
