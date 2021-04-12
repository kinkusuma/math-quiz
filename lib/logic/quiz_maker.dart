import 'dart:math';

class QuizMain {
  List<int> numList = [];

  void next() {
    numList.removeRange(0, 3);
  }

  String question() {
    for (int i = 1; i <= 4; i++) {
      var numItem = new Random().nextInt(100);
      numList.add(numItem);
    }
    return numList[0].toString() +
        '+' +
        numList[1].toString() +
        'x' +
        numList[2].toString() +
        '-' +
        numList[3].toString() +
        '= ?';
  }

  String answer() {
    var answ = numList[0] + numList[1] * numList[2] - numList[3];
    return answ.toString();
  }
}
