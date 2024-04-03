import 'package:flutter/material.dart';

//widget with some text
class StyledText extends StatelessWidget {
  /*const StyledText(String text, {super.key}) : outputText = text;

  String outputText;*/

  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 50, color: Color.fromARGB(255, 194, 209, 224)),
    );
  }
}
