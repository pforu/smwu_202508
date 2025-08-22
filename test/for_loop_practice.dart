class ForLoopPractice {
  ForLoopPractice() {
    normalForLoop();
    enhancedForLoop();
    forEachForLoop();
  }

  List<double> list = [3.5, 5.0, 3.3];

  void normalForLoop() {
    for (int i = 0; i < list.length; i++) {
      print('normalForLoop : index - $i, value - ${list[i]}');
    }
  }

  void enhancedForLoop() {
    for (double value in list) {
      print('enhancedForLoop : value - $value');
    }
  }

  void forEachForLoop() {
    list.forEach((value) {
      print('forEachForLoop : value - $value');
    });
  }
}
