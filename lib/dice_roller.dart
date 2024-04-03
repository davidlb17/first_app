import 'dart:math';

import 'package:flutter/material.dart';

//stateful widgets always need 2 classes
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//the _ makes the class private
class _DiceRollerState extends State<DiceRoller> {
  final random = Random();
  var activeDice = 1;

  void rollDice() {
    //to make sure the image update every time (build is reexecuted)
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      //MainAxisSize.min adjust the size of the column to the children size
      //MainAxisAlignment.center center the children
      children: [
        Image.asset(
          'assets/images/dice-$activeDice.png',
          width: 250,
        ),
        const SizedBox(
          height: 50.0,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(153, 165, 97, 185),
            textStyle: const TextStyle(
              fontSize: 30,
            ),
            shape: const LinearBorder(),
          ),
          child: const Text('Roll the dice'),
        )
      ],
    );
  }
}
