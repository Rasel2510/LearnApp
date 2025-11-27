class Quiz {
  final String id;
  final String category;
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;
  final String timeLimit;

  Quiz({
    required this.id,
    required this.category,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    this.timeLimit = "30s",
  });

  String getOptionLetter(int index) {
    return String.fromCharCode(65 + index);
  }

  bool isCorrect(int selectedIndex) {
    return selectedIndex == correctIndex;
  }

  String get correctAnswer {
    return options[correctIndex];
  }

  String get correctOptionLetter {
    return getOptionLetter(correctIndex);
  }
}

class QuizData {
  static List<Quiz> sampleQuizzes = [
    Quiz(
      id: "1",
      category: "Vocabulary",
      question: "My dog is a little ___, especially when around other dogs.",
      options: ["Scared", "Frightening", "Timid", "Concerned"],
      correctIndex: 2,
      explanation:
          "Timid means showing a lack of courage or confidence. While 'scared' could also fit, 'timid' better describes a personality trait.",
      timeLimit: "23.03s",
    ),
    Quiz(
      id: "2",
      category: "Grammar",
      question: "She ___ to the store yesterday.",
      options: ["go", "went", "gone", "going"],
      correctIndex: 1,
      explanation: "The past tense of 'go' is 'went'.",
      timeLimit: "15.00s",
    ),
  ];
}
