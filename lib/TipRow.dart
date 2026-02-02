import 'package:flutter/material.dart';

class TipRow extends StatelessWidget {
  const TipRow({super.key, required this.theme, required this.total});

  final ThemeData theme;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Padding(padding: const EdgeInsets.all(8.0), child: Text('$total')),
          ],
        ),
      ],
    );
  }
}
