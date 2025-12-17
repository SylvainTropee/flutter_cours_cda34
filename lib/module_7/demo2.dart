import 'package:flutter/material.dart';
import 'package:flutter_cours_cda_34/module_7/page1.dart';
import 'package:flutter_cours_cda_34/module_7/page2.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(App());
}

final GoRouter _router = GoRouter(
  initialLocation: "/page-1",
  routes: [
    GoRoute(path: "/page-1", builder: (context, state) => PageOne()),
    GoRoute(path: "/page-2/:id", builder: (context, state) {
      var id  = state.pathParameters['id'];
      var message = state.extra as String;
      print(id);
      print(message);

      return PageTwo();
    }),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
