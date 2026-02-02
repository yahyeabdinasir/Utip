import 'package:flutter/material.dart';


class TotalPerPerson extends StatelessWidget {
  const TotalPerPerson({
    super.key,
    required this.theme,
    required this.style,
    required this.total,
  });

  final ThemeData theme;
  final TextStyle? style;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.all(20),
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
              // "$_countPerPserson",
              "${total.toStringAsFixed(2)}",


              style: style?.copyWith(
                fontSize: theme.textTheme.displaySmall?.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// "${total.toStringAsFixed(2)}",   // so  this means remove should contain the


