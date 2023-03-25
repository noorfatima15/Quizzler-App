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
      quizList: [
        Quiz(question: 'Sharks are mammals.', answer: false),
        Quiz(question: 'Sea otters have a favorite rock they use to break open food.', answer: true),
        Quiz(question: 'The largest fish in the ocean is the whale shark.', answer: false),
        Quiz(question: 'The blue whale is the biggest animal to have ever lived.', answer: true),
        Quiz(question: 'The hummingbird egg is the world\'s smallest bird egg.', answer: true),
        Quiz(question: 'The largest bird egg is the ostrich egg.', answer: false),
        Quiz(question: 'Pigs roll in the mud because they don’t like being clean.', answer: false),
      ],
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
