import 'package:calc_fast/widgets/calculator.widget.dart';
import 'package:flutter/material.dart';

import '../widgets/button-calc.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calc Fast'),
      ),
      body: const CalculatorWidget(),
    );
  }
}
