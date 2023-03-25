import 'package:flutter_bloc/flutter_bloc.dart';
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
        questionNumber: state.questionNumber + 1,
        score: state.score + 1,
      ));
    } else {
      emit(state.copyWith(
        questionNumber: state.questionNumber + 1,
      ));
    }
  }

  onPressedFalse(OnPressedFalse event, Emitter<QuizState> emit) {
    if (event.answer == state.quizList[state.questionNumber].answer) {
      emit(state.copyWith(
        questionNumber: state.questionNumber + 1,
        score: state.score + 1,
      ));
    } else {
      emit(state.copyWith(
        questionNumber: state.questionNumber + 1,
      ));
    }
  }
}
