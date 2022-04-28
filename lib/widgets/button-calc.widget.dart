import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/calculator.provider.dart';

class ButtonCalcWidget extends StatelessWidget {
  final String text;
  final Icon? icon;
  final Color color;
  final bool large;

  const ButtonCalcWidget({
    Key? key,
    this.text = '',
    this.icon,
    this.color = Colors.grey,
    this.large = false,
  }) : super(key: key);

  touch(value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey.shade100,
        onPrimary: Colors.black,
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: () {
        Provider.of<CalculatorProvider>(context, listen: false)
            .touchButton(text);
      },
      child: icon != null ? icon : Text(text),
    );
  }
}
