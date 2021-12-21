import 'dart:math';

class Game { //camel case
  int? answer;
  static const maxRandom = 100;
  int count=1;
  Game(){
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
  }
  int doGuess(int num)  {
    //ทายถูก return 0
    //ทายมากไป return 1
    //ทายน้อยไป return -1
    if(num == answer!){
      count++;
      return 0;
    }
    else if(num > answer!){
      count++;
      return 1;
    }
    else {
      count++;
      return -1;
    }
  }
}


