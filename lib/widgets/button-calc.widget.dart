import 'package:flutter/material.dart';

class ButtonCalcWidget extends StatelessWidget {
  final String text;
  final Color color;
  final bool large;

  const ButtonCalcWidget({
    Key? key,
    required this.text,
    this.color = Colors.grey,
    this.large = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    final widthSizeButton = (sizeScreen.width / 4);
    final heightSizeButton = (sizeScreen.height - 100) / 5;
    final borderSize = 1.0;
    final textSize = 20.0;
    final horizontalPaddingButtonSize =
        (widthSizeButton.toDouble() - (textSize + (borderSize * 2))) / 2;

    final verticalPaddingButtonSize =
        (heightSizeButton.toDouble() - (textSize + (borderSize * 2))) / 2;

    return Container(
      // constraints: BoxConstraints(
      //   minWidth: large ? widthSizeButton * 2 : widthSizeButton,
      //   minHeight: 100,
      // ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: borderSize),
        color: color,
      ),
      padding: EdgeInsets.only(
        left: horizontalPaddingButtonSize,
        right: horizontalPaddingButtonSize,
        top: verticalPaddingButtonSize,
        bottom: verticalPaddingButtonSize,
      ),
      child: Container(
        width: textSize,
        height: textSize,
        child: Text(
          text,
          style: TextStyle(fontSize: textSize),
        ),
      ),
    );

    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.all(20),
    //     primary: Colors.grey,
    //     textStyle: TextStyle(fontSize: 30),
    //   ),
    //   onPressed: () {},
    //   child: Text(text),
    // );
  }
}
