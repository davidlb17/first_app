import 'package:flutter/material.dart';

//import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

//the class must extend stateful (the images change)
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  //const GradientContainer(this.colors,{super.key});

  //predefined constructor
  GradientContainer.redgreen({super.key})
      : colors = [
          const Color.fromARGB(255, 226, 125, 125),
          const Color.fromARGB(255, 123, 222, 153)
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        //column widget is used to render multiple widgets (admits children)
        child: DiceRoller(),
      ),
    );
  }
}
















 /* Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(child: StyledText('Hello world')),
    );
  }
}*/

  /*Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[StyledText('1'), StyledText('2')])),
    );
  }
}*/
