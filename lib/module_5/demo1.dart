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
    return Scaffold(body: PasswordWidget(label: "Mot de passe"));
  }
}

class PasswordWidget extends StatefulWidget {
  String label;

  PasswordWidget({required String this.label, super.key});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool isVisible = false;

  _toggleVisibility(bool value) {
    setState(() {
      isVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            obscureText: !isVisible,
            decoration: InputDecoration(labelText: widget.label),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(isVisible ? Icons.lock_open : Icons.lock),
              Switch(value: isVisible, onChanged: _toggleVisibility),
            ],
          ),
        ],
      ),
    );
  }
}
