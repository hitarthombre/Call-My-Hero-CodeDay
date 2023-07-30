import 'package:flutter/material.dart';

import 'help_screen.dart';
String User = "Username";

void main()  {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
      ,
    );
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              child: Icon(Icons.person),
            ),
            SizedBox(width: 8),
            Container(
              child: Text(
                User,
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(width: 100),
            Container(
              child: Image.asset(
                'assets/images/logom2.png',
                fit: BoxFit.cover,
                scale: 5, // Set the scale to 50% (0.5)
              ),
            ),
          ],
        ),
      ),
      // Rest of the code remains the same...

      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.black,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/img1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/sup.jpg',
                      fit: BoxFit.cover,
                    ),
                    width: 100,
                    margin: EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("SuperMan",style: TextStyle(fontSize: 20,color: Colors.blue),),
                ],
              ),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 30 + 100 + 20,
            left: 20,
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/thor.jpg',
                      fit: BoxFit.cover,
                    ),
                    width: 100,
                    margin: EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Thor",style: TextStyle(fontSize: 20,color: Colors.black),),
                ],
              ),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 30 + 100 + 20 + 100 + 20,
            left: 20,
            child: Container(
              child: Row(
                children: [
                  Container(

                    child: Image.asset(
                      'assets/images/hulk.jpg',
                      fit: BoxFit.cover,
                    ),
                    width: 100,
                    margin: EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Hulk",style: TextStyle(fontSize: 20,color: Colors.green),),
                ],
              ),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 30 + 100 + 20 + 100 + 20 + 100 + 20,
            left: 20,
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/spidy.jpg',
                      scale: 0.5,
                      fit: BoxFit.cover,
                    ),
                    width: 100,
                    margin: EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("SpiderMan",style: TextStyle(fontSize: 20,color: Colors.red),),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to the Help screen when the button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Help()),
          );
        },
        backgroundColor: Colors.redAccent,
        icon: Icon(Icons.call, color: Colors.white),
        label: Text(
          "Call a SuperHero",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


