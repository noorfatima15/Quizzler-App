import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzler_app/core/constants/typography.dart';
import 'package:quizzler_app/core/widgets/custom_button.dart';
import 'package:quizzler_app/model/quiz.dart';
part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(QuizState.initial()) {
    on<OnPressedTrue>((event, emit) => onPressedTrue(event, emit));
    on<OnPressedFalse>((event, emit) => onPressedFalse(event, emit));
  }

  onPressedTrue(OnPressedTrue event, Emitter<QuizState> emit) {
    if (event.answer == state.quizList[state.questionNumber].answer) {
      emit(state.copyWith(
        score: state.score + 1,
        questionNumber: state.questionNumber + 1,
        isFinished: state.questionNumber == state.quizList.length - 1 ? true : false,
      ));
    } else {
      emit(state.copyWith(
        questionNumber: state.questionNumber + 1,
        isFinished: state.questionNumber == state.quizList.length - 1 ? true : false,
      ));
      if (state.isFinished) {
        showDialog(
            context: event.context,
            builder: (context) {
              return AlertDialog(
                title: Column(
                  children: const [
                    Text('You have finished the quiz!', style: dialogContent),
                  ],
                ),
                actions: [
                  Center(
                      child: CustomButton(
                    text: 'OK',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ))
                ],
              );
            });
        emit(state.copyWith(
          score: 0,
          questionNumber: 0,
          isFinished: false,
        ));
      }
    }
  }

  onPressedFalse(OnPressedFalse event, Emitter<QuizState> emit) {
    if (event.answer == state.quizList[state.questionNumber].answer) {
      emit(state.copyWith(
        score: state.score + 1,
        questionNumber: state.questionNumber + 1,
        isFinished: state.questionNumber == state.quizList.length - 1 ? true : false,
      ));
    } else {
      emit(state.copyWith(
        questionNumber: state.questionNumber + 1,
        isFinished: state.questionNumber == state.quizList.length - 1 ? true : false,
      ));
    }
    if (state.isFinished) {
      showDialog(
          context: event.context,
          builder: (context) {
            return AlertDialog(
              title: Column(
                children: const [
                  Text('You have finished the quiz!', style: dialogContent),
                ],
              ),
              actions: [
                Center(
                    child: CustomButton(
                  text: 'OK',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ))
              ],
            );
          });
      emit(state.copyWith(
        score: 0,
        questionNumber: 0,
        isFinished: false,
      ));
    }
  }
}
