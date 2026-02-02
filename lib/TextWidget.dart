import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key, required this.amountMony, required this.onchanged,
  });


  final String amountMony;
  final ValueChanged<String> onchanged ;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
      onChanged: (String value) {
        onchanged(value); // value has the value that user typr into the screen
        // print("hello type${value}");
      },
    );
  }
}

