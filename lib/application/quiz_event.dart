part of 'quiz_bloc.dart';

abstract class QuizEvent {}

class OnPressedTrue extends QuizEvent {
  final bool answer;
  OnPressedTrue({required this.answer});
}

class OnPressedFalse extends QuizEvent {
  final bool answer;
  OnPressedFalse({required this.answer});
}

class OnPressedReset extends QuizEvent {}
