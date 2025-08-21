import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smwu_202508/main.dart';

import 'collections_practice.dart';
import 'conditional_practice.dart';

void main() {
  CollectionsPractice collection = CollectionsPractice();
  collection.listmake();
  collection.mapmake();
  collection.setmake();

  var conditionalpractice = ConditionalPractice();
  print(conditionalpractice.scoreIf(80));
  conditionalpractice.scoreSwitch(50);
}