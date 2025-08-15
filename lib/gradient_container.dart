import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // Step 1 constructor function above
  // Step 2 constructor function would be  const GradientContainer(this.color1, this.color2,{super.key});

  final List<Color> colors;

  // Step 1 The List<Color> colors parameter allows you to pass a list of colors that will be used in the gradient.
  // you can either do that or you can use a fixed list of colors e.g final Colors color1;, final Colors color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
