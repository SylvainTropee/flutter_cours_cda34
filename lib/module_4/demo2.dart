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
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Cliquez ici !"),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.purpleAccent)),
          ),
          OutlinedButton(onPressed: null, child: Text("Cliquez pas là ! !")),
          Image.network("https://docs.flutter.dev/assets/images/flutter-logo-sharing.png"),
          Image.asset("assets/images/yoda.jpg")
        ],
      ),
    );
  }
}
