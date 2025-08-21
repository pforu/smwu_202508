class ConditionalPractice {
  String scoreIf(int score) {
    String grade = "F";
    print("if score : $score");

    if (score >= 90) {
      grade = "A";
    } else if (score >= 80) {
      grade = "B";
    } else if (score >= 70) {
      grade = "C";
    } else if (score >= 60) {
      grade = "D";
    }
    return grade;
    /*
    if (score >= 90) return "A"
     */
  }

  void scoreSwitch(int score) {
    print("switch score : $score");
    switch(score) {
      case 90:
        print("A");
        break;
      case 80:
        print("B");
        break;
      case 70:
        print("C");
        break;
      case 60:
        print("D");
        break;
      default:
        print("F");
    }
    /*
    int value = score ~/ 10; //score = score / 10
    switch(value) {
      case 9:
        return "A"
    ..}
    return "F"
     */
  }
}