import 'package:flutter/material.dart';
import 'package:utip/personalCounter.dart';

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
  //  so here in there if we need to store the value that rebuild screen each time we need to set out here
  int _personCount = 1;
  int _countPerPserson = 0;

  void increment() {
    setState(() {
      _personCount++;
    });
  }

  void decrement() {
    setState(() {
      if (_personCount > 1){
        _personCount--;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    print(context.widget);
    // storing the theme to the varaible
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

        title: Text(
          "Utip",
          style: style!.copyWith(color: theme.colorScheme.onPrimaryContainer),
        ),
        // centerTitle: true,
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // padding: EdgeInsets.all(20),
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
                    "$_countPerPserson",

                    style: style?.copyWith(
                      fontSize: theme.textTheme.displaySmall?.fontSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //  added the container that surrneded with the border
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              // width: 100,
              // height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: theme.colorScheme.primary),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child:
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //  prefix it's the attribute that it's used to add the prefix of the value
                        prefixIcon: Icon(Icons.attach_money),
                        // lable also used as the place holder of the text
                        label: Text("input the bill"),
                      ),
                      // keyboard type it's specify the kind of the input
                      keyboardType: TextInputType.number,
                      // onchange we can access the value that we passes the input
                      // onChanged: (String value) {
                      //   // print("hello type${value}");
                      // },
                    ),

                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Split",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        PersonalCounter(theme: theme, personCount: _personCount, InCrement: increment , Decrement: decrement,),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Tip",
                            style: TextStyle(color: theme.colorScheme.primary),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('$_countPerPserson'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Text("hello"),
                  ],
                ),
              ),
            ),
          ),
          // // ),
        ],
      ),
    );
  }
}
