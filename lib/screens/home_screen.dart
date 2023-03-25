import 'package:flutter/material.dart';
import 'package:quizzler_app/application/quiz_bloc.dart';
import 'package:quizzler_app/core/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BlocProvider(
      create: (context) => QuizBloc(),
      child: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Score: 0'),
                    Text('Question: ${state.questionNumber + 1}/10'),
                  ],
                ),
                Text(state.quizList[state.questionNumber].question),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Correct: 0'),
                    Text('Incorrect: 0'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(text: 'True'),
                    CustomButton(
                      text: 'False',
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    )));
  }
}
