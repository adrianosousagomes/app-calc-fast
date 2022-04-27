import 'package:flutter/material.dart';

import '../widgets/button-calc.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Calc Fast'),
      // ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.black87,
            child: Text(
              '0.00',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              ButtonCalcWidget(text: 'C'),
              ButtonCalcWidget(text: 'x'),
              ButtonCalcWidget(text: '%'),
              ButtonCalcWidget(text: '/'),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget(text: '7'),
              ButtonCalcWidget(text: '8'),
              ButtonCalcWidget(text: '9'),
              ButtonCalcWidget(text: 'X'),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget(text: '4'),
              ButtonCalcWidget(text: '5'),
              ButtonCalcWidget(text: '6'),
              ButtonCalcWidget(text: '-'),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget(text: '1'),
              ButtonCalcWidget(text: '2'),
              ButtonCalcWidget(text: '3'),
              ButtonCalcWidget(text: '+'),
            ],
          ),
          Row(
            children: [
              ButtonCalcWidget(text: '0', large: true),
              ButtonCalcWidget(text: '.'),
              ButtonCalcWidget(text: '='),
            ],
          ),
        ],
      ),
    );
  }
}
