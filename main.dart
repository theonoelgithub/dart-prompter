import 'package:dart_prompter_tn/dart_prompter_tn.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f'),
    new Option('I want green', '#0f0'),
  ];

  final Prompter prompter = new Prompter();

  String colorCode = prompter.askMultiple('Select a color', options);

  bool answer = prompter.askBinary('Do you like this lib?');

  print ('$colorCode , $answer');
}