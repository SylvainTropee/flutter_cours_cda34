import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'cat.dart';

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
    return Scaffold(body: CatView());
  }
}

class CatView extends StatefulWidget {
  const CatView({super.key});

  @override
  State<CatView> createState() => _CatViewState();
}

class _CatViewState extends State<CatView> {
  Cat? felix;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCat();
  }

  Future<void> getCat() async {
    var response = await http.get(
      Uri.parse("https://api.thecatapi.com/v1/images/search"),
    );
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      setState(() {
        felix = Cat.fromJson(json[0]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("coucou"),
        if (felix != null) Image.network(felix!.url),
        FutureBuilder(
          future: http.get(
            Uri.parse("https://api.thecatapi.com/v1/images/search"),
          ),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data?.body != null) {
              var garfield = Cat.fromJson(jsonDecode(snapshot.data!.body)[0]);
              return Image.network(garfield.url, webHtmlElementStrategy: WebHtmlElementStrategy.prefer);
            }

            return CircularProgressIndicator();
          },
        ),
      ],
    );
  }
}
