import 'package:flutter/foundation.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider with ChangeNotifier {
  String displayValue;

  CalculatorProvider({
    this.displayValue = '0.00',
  });

  touchButton(String value) {
    if (value == 'C') {
      clearDisplay();
    } else if (value == '=') {
      evaluateExpression();
    } else if (value == '<-') {
      displayValue = displayValue.substring(0, displayValue.length - 1);
    } else {
      displayValue += value;
    }
    print(displayValue);
    notifyListeners();
  }

  evaluateExpression() {
    ContextModel cm = ContextModel();
    Parser p = Parser();
    Expression exp = p.parse(displayValue.replaceAll('X', '*'));
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    displayValue = eval.toStringAsFixed(2);

    print('Result: ' + eval.toString());
  }

  clearDisplay() {
    displayValue = '';
    notifyListeners();
  }
}
