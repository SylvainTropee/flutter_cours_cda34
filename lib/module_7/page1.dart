import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Page 1"),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/page-2", arguments: 123);
                context.go("/page-2/12", extra: "coucou");
              },
              child: Text("GO !"),
            ),
          ],
        ),
      ),
    );
  }
}
