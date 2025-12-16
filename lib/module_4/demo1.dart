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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BirdList()

      // Column(
      //   children: [
          // Text("Colonne 1"),
          // Text("Colonne 2"),
          // //Expanded(child: Text("Colonne 2")),
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Row(
          //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       //expanded permet au widget non structurant de prendre toute la place
          //       Expanded(child: Text("Row 1")),
          //       Expanded(child: Text("Row 2")),
          //       Text("Row 3"),
          //     ],
          //   ),
          // ),

        //],
      //),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenue !"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Coucou !",
                style: TextStyle(color: Colors.amberAccent, fontSize: 40)),
            SizedBox(height: 2500),
            Text("Fin")
          ],
        ),
      ),
    );
  }
}

class BirdList extends StatelessWidget {
  BirdList({super.key});

  List<String> birds = [
    "Rouge-gorge",
    "Pigeon",
    "Aigle royal",
    "Faucon pélerin",
    "Chouette hulotte"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: birds.length,
        itemBuilder: (context, index) {
          return Text(birds[index]);
        });
  }
}
