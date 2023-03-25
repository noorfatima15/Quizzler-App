part of 'quiz_bloc.dart';

abstract class QuizEvent {}

class OnPressedTrue extends QuizEvent {
  final bool answer;
  final BuildContext context;
  OnPressedTrue({required this.answer, required this.context});
}

class OnPressedFalse extends QuizEvent {
  final bool answer;
  final BuildContext context;
  OnPressedFalse({required this.answer, required this.context});
}

class OnPressedReset extends QuizEvent {}
