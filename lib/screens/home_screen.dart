import 'package:flutter/material.dart';
import 'package:quizzler_app/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Score: 0'),
            Text('Question: 1/10'),
          ],
        ),
        const Text('This is where the question text will go.'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Correct: 0'),
            Text('Incorrect: 0'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomButton(),
            CustomButton(),
          ],
        ),
      ],
    )));
  }
}
