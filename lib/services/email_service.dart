import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:feedback_form/models/feedback.dart';

class EmailService {
  static Future<void> sendEmail({required Feedback feedback}) async {
    final smtpServer = gmail('your_email@gmail.com', 'your_password');

    final message = Message(
      'Feedback Form Submission',
      from: Address('your_email@gmail.com', 'Feedback Form App'),
      recipients: ['recipient_email@example.com'],
      subject: 'New Feedback Submission',
      text: '''
Name: ${feedback.name}
Email: ${feedback.email}
Feedback: ${feedback.feedbackText}
Rating: ${feedback.rating}
''',
    );

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ${sendReport.toString()}');
    } catch (e) {
      print('Error sending email: $e');
      rethrow;
    }
  }
}