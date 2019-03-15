import 'dart:io';

class Terminal {
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

}