import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(colors: [
        Color.fromARGB(255, 226, 125, 125),
        Color.fromARGB(255, 123, 222, 153)
      ])),
      /*    body: GradientContainer([
        Color.fromARGB(255, 226, 125, 125),
        Color.fromARGB(255, 123, 222, 153)
      ])),*/
    ),
  );
}
