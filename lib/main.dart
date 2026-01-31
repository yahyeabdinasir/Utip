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
    print(context.widget);
    var theme = Theme.of(context);
    // copywith it's used to add more the attribute to the existing theme and in order to costomise the default
    // functionaity of the theme
    final style = Theme.of(context).textTheme.titleMedium?.copyWith(
      color: theme.colorScheme.onPrimary,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        // title: const Text("app Bar project"),
        leading: Text("Utip"),
        centerTitle: true,
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 160, 128, 216),
              color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,

              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Total per person", style: style?.copyWith()),
                // Text("\$20", style: theme.textTheme.displayMedium),
                Text(
                  "\$20.85",
                  style: style?.copyWith(
                    fontSize: theme.textTheme.displaySmall?.fontSize,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
