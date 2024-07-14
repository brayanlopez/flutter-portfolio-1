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
        title: "my Flutter App",
        home: Scaffold(
            appBar: AppBar(title: const Text("hola mundo")),
            body: const Center(
              child: Column(children: [
                Text("hola mundo"),
                Text("hola mundo"),
                Text("hola mundo"),
              ]),
            )));
  }
}