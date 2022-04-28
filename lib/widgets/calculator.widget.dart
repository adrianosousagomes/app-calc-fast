import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/calculator.provider.dart';
import 'button-calc.widget.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  Widget display(BuildContext context) {
    var calculatorProvider = Provider.of<CalculatorProvider>(context);

    return Expanded(
      child: Container(
        width: double.infinity,
        height: 300,
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        color: Colors.black87,
        child: Text(
          calculatorProvider.displayValue,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget keyboard() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      children: [
        ButtonCalcWidget(text: 'C'),
        ButtonCalcWidget(text: '+1'),
        ButtonCalcWidget(text: '%'),
        ButtonCalcWidget(text: '<-', icon: Icon(Icons.arrow_back)),
        ButtonCalcWidget(text: '7'),
        ButtonCalcWidget(text: '8'),
        ButtonCalcWidget(text: '9'),
        ButtonCalcWidget(text: '/'),
        ButtonCalcWidget(text: '4'),
        ButtonCalcWidget(text: '5'),
        ButtonCalcWidget(text: '6'),
        ButtonCalcWidget(text: 'X'),
        ButtonCalcWidget(text: '1'),
        ButtonCalcWidget(text: '2'),
        ButtonCalcWidget(text: '3'),
        ButtonCalcWidget(text: '-'),
        ButtonCalcWidget(text: '0', large: true),
        ButtonCalcWidget(text: '.'),
        ButtonCalcWidget(text: '='),
        ButtonCalcWidget(text: '+'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        display(context),
        keyboard(),
      ],
    );
  }
}
