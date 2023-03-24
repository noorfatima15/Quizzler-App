part of 'quiz_bloc.dart';

class QuizState {
  final int questionNumber;
  final int score;
  final List<Quiz> quizList;
  final bool isFinished;

  QuizState({
    required this.questionNumber,
    required this.score,
    required this.quizList,
    required this.isFinished,
  });

  factory QuizState.initial() {
    return QuizState(
      questionNumber: 0,
      score: 0,
      quizList: [],
      isFinished: false,
    );
  }
  QuizState copyWith({
    int? questionNumber,
    int? score,
    List<Quiz>? quizList,
    bool? isFinished,
  }) {
    return QuizState(
      questionNumber: questionNumber ?? this.questionNumber,
      score: score ?? this.score,
      quizList: quizList ?? this.quizList,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}
