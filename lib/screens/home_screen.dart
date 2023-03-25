import 'package:flutter/material.dart';
import 'package:quizzler_app/application/quiz_bloc.dart';
import 'package:quizzler_app/core/constants/images.dart';
import 'package:quizzler_app/core/constants/typography.dart';
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
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(Images.backgroundImage), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Score: ${state.score}', style: scoreOptions),
                    Text('Question: ${state.questionNumber + 1}/${state.quizList.length}', style: scoreOptions),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Correct: ${state.score}', style: scoreOptions),
                    Text('Incorrect: ${state.questionNumber - state.score}', style: scoreOptions),
                  ],
                ),
                const Spacer(flex: 2),
                Text('${state.quizList[state.questionNumber].question}?', style: subHeader),
                const Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      text: 'True',
                      onPressed: () {
                        context.read<QuizBloc>().add(OnPressedTrue(answer: true));
                      },
                    ),
                    CustomButton(
                      text: 'False',
                      color: Colors.red,
                      onPressed: () {
                        context.read<QuizBloc>().add(OnPressedFalse(answer: false));
                      },
                    ),
                  ],
                ),
                const Spacer(flex: 2),
              ],
            ),
          );
        },
      ),
    )));
  }
}
