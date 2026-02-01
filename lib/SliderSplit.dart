
import 'package:flutter/material.dart';

class SplitSlider extends StatelessWidget {
  const SplitSlider({
    super.key,
    required double tipPercentage, required this.onchange,
  }) : _tipPercentage = tipPercentage;

  final double _tipPercentage;
  final ValueChanged<double> onchange ;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _tipPercentage,

      // the variable that we passed triged  the changes of slider
      onChanged: onchange,
      // onChanged: (value) {
      //   print("this is the value  {$value}");
      //   print("this is the tipPercentage  {$_tipPercentage}");
      //   setState(() {
      //     _tipPercentage = value;
      //   });
      // },
      min: 0,
      max: 0.5,
      // divisions: 5,  // the number of the discrete that jums each time it's 5
      // 5 / 50 = 10 that means the division each time will jumb to the 10
      label: "${(_tipPercentage * 100).round()}%",
    );
  }
}
