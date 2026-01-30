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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Tipapp(),
    );
  }
}

class Tipapp extends StatefulWidget {
  const Tipapp({super.key});

  @override
  State<Tipapp> createState() => _TipappState();
}

class _TipappState extends State<Tipapp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
