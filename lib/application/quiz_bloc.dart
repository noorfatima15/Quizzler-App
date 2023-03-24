import 'package:bloc/bloc.dart';
import 'package:quizzler_app/model/quiz.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(QuizState.initial()) {
    on<QuizEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
