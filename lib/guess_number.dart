// ignore_for_file: avoid_print
import 'dart:io';
import 'package:guess_number_ver2/playgame.dart';


void main() {
  var play = playGame();
  play.play();
  while(true) {
    stdout.write('Do you want to play again(Y/y or N/n): ');
    var again = stdin.readLineSync();
    if (again == "Y" || again == "y") {
      int i=0;
      while (i<1){
        play.isCorrect=false;
        play.play();
        break;
      }
    }
    if (again == "N" || again == "n") {
      break;
    }
  }
}
