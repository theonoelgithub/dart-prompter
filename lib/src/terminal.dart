import 'dart:io';
import './option.dart';

class Terminal {
  const Terminal();

  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  collectInput() {
    return stdin.readLineSync();
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }

  void printOptions(List<Option> options) {
    options.asMap().forEach((i, option) {
      stdout.writeln('$i. ${options[i].label}');
      });

    stdout.writeln('Enter a choice, boss\n');
    stdout.write('>');
  }

}