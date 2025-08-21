class Conditional {

  void simpleIf() {
    int age = 30;
    bool check = false;

    if (age<20) {
      print('Conditional.simpleIf 미성년자');
    }
    else {
      print('Conditional.simpleIf 성인');
    }
  }

  void simpleSwitch() {
    int age = 20;
    switch(age) {
      case 10:
        print(10);
        break;
      case 20:
        print(20);
        //break;
      case 30:
        print(30);
        break;
      default:
        print(40);
    }
  }
}