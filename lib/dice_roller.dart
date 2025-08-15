import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); // Randomizer is an instance of the Random class, which is used to generate random numbers also makes the code more readable and // maintainable by avoiding the need to create a new Random instance every time we want to generate a random number.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll =
      2; // Variable to hold the current dice roll value, initialized to 2.

  void rollDice() {
    // Function of the button, when  pressed
    setState(() {
      //upades the UI
      // setState is a method that tells Flutter to rebuild the widget with the new state.
      currentDiceRoll = randomizer.nextInt(6) +
          1; //math feature to generate a random number between 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // $currentDiceRoll is a variable that holds the current dice roll value.
          // The image is dynamically loaded based on the current dice roll.
          // The image file names are expected to be in the format dice-1.png, dice-2.png, ..., dice-6.png.
          width: 200,
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        //or const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          // or () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
