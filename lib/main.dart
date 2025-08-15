import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
        home: Scaffold(
      body: GradientContainer(colors: [
        Color.fromARGB(255, 83, 47, 146),
        Color.fromARGB(255, 154, 124, 206)
        // This approach used for step 1
        // Step 2 would just be Color.fromARGB(255, 83, 47, 146), Color.fromARGB(255, 154, 124, 206).
      ]),
    )),
  );
}
