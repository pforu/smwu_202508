// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smwu_202508/main.dart';

import 'for_loop.dart';
import 'for_loop_practice.dart';
import 'method.dart';
import 'collections.dart';
import 'conditional.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  // Method();
  //
  // Collections collection = Collections();
  // collection.listAdd();
  // collection.listRemove();
  // collection.mapController();
  // collection.setController();
  //
  // var conditional = Conditional();
  // conditional.simpleIf();
  // conditional.simpleSwitch();

  // ForLoop();
  // ForLoopPractice();

  // Person person = Person("김진한", 34, 75); //타입, 변수명, 클래스
  // print("person : $person");
  // print("person name : ${person.name}");
  // print("person age : ${person.age}");
  // print("person weight : ${person.weight}");
  // print("person nickname : ${person.nickName}");
  // person.talk();


  List<Person> personList = [];
  Person personPractice1 = Person("빙빙이", 10, 20);
  Person personPractice2 = Person("눈송이", 120, 30);

  personList.add(personPractice1);
  personList.add(personPractice2);
  // personList.addAll([person1, person2])
  // personList = [person1, person2]

  for (Person element in personList) {
    print("name : ${element.name}, age : ${element.age}, weight : ${element.weight}");
  }
  // print('personList : $personList')
  // for (var person in personList) {
  //    print(person);}


  List<Product> productList = [];
  Product product1 = Product(name: "빵", company: "A");
  Product product2 = Product(name: "종이", company: "B");
  productList.addAll([product1, product2]);
  product1.sale();
  for (Product element in productList) {
    print(element);
  }
}
