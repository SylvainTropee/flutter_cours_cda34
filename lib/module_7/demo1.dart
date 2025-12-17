import 'package:flutter/material.dart';
import 'package:flutter_cours_cda_34/module_7/page1.dart';
import 'package:flutter_cours_cda_34/module_7/page2.dart';
import 'package:url_strategy/url_strategy.dart';

void main(){
  setPathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/page-1",
      routes: {
        "/page-1" : (context) => PageOne(),
        "/page-2" : (context) => PageTwo()
      },
    );
  }
}
