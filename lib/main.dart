import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:feedback_form/screens/feedback_screen.dart';
import 'package:feedback_form/models/feedback.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => FeedbackModel(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedbackScreen(),
    );
  }
}