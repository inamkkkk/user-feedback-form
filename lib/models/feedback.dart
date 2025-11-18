class Feedback {
  final String name;
  final String email;
  final String feedbackText;
  final double rating;

  Feedback({
    required this.name,
    required this.email,
    required this.feedbackText,
    required this.rating,
  });
}

class FeedbackModel extends ChangeNotifier {
  List<Feedback> _feedbacks = [];

  List<Feedback> get feedbacks => _feedbacks;

  void addFeedback(Feedback feedback) {
    _feedbacks.add(feedback);
    notifyListeners();
  }
}