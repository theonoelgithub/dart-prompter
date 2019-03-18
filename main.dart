import 'package:dart_prompter_tn/src/option.dart';
import 'package:dart_prompter_tn/src/prompter.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f'),
    new Option('I want green', '#0f0'),
  ];

  final Prompter prompter = new Prompter();
  print(prompter.ask('What color do you want?', options));
}