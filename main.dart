import 'package:dart_prompter_tn/src/terminal.dart';

void main() {
  var terminal = new Terminal();
  
  terminal.clearScreen();
  var input = terminal.collectInput();
  terminal.clearScreen();
  terminal.printPrompt('You just entered $input');
}