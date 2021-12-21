import 'dart:io';
import 'package:guess_number_ver2/game.dart';

class playGame{
  static const maxRandom = 100;
  var game = Game();
  var isCorrect = false;
  void play() {
    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var count = game.count;
      var result = game.doGuess(guess);
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else {
        print('║ ➜ $guess is CORRECT ❤, total guesses: $count');
        print('╟────────────────────────────────────────');
        isCorrect = true;
      }
    } while (!isCorrect);
    game.count=1;
    print('║                 THE END                ');
    print('╚════════════════════════════════════════');
  }
}
