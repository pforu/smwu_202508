class Person {
  String name;
  int age;
  double weight;
  //String nickName = "jinhan";

  Person(this.name, this.age, this.weight);

  void talk() {
    print('$name이 대화를 신청했습니다.');
  }

  // @override
  // String toString() {
  //   return 'Person{name: $name, age: $age}';
  // }
}