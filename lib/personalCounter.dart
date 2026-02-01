import 'package:flutter/material.dart';
class PersonalCounter extends StatelessWidget {
  const PersonalCounter({
    super.key,
    required this.theme,
    required int personCount, required this.InCrement, required this.Decrement,
  }) : _personCount = personCount;

  final ThemeData theme;
  final int _personCount;


  // this void Call back it's same as the () {}'
  final VoidCallback InCrement;
  final VoidCallback Decrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed:   InCrement,
          icon: Icon(Icons.add),
          color: theme.colorScheme.primary,
        ),

        Text(
          "$_personCount",
          style: TextStyle(
            color: theme.colorScheme.primary,
          ),
        ),

        IconButton(
          onPressed:  Decrement,

          icon: Icon(
            Icons.remove,

            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
