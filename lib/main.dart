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
      title: "Utip Project",
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
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        // title: const Text("app Bar project"),
        leading: Text("Utip"),
        centerTitle: true,
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 160, 128, 216),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: [Text("Total per person "), Text("\$20")]),
          ),
        ],
      ),
    );
  }
}
