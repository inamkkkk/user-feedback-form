# Feedback Form App

A simple Flutter app for collecting user feedback and sending it via email.

## Features

*   Text fields for entering name, email, and feedback message.
*   Rating system using `flutter_rating_bar`.
*   Submit button to send the feedback via email using `mailer` package.
*   State management using `provider` package.

## Folder Structure


lib/
  main.dart
  screens/
    feedback_screen.dart
  models/
    feedback.dart
  services/
    email_service.dart


## Dependencies

*   `flutter`
*   `cupertino_icons`
*   `provider`
*   `flutter_rating_bar`
*   `mailer`

## Getting Started

1.  Clone the repository.
2.  Run `flutter pub get` to install dependencies.
3.  Update `EmailService.sendEmail` with your email credentials and recipient address.
4.  Run the app using `flutter run`.
