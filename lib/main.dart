import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smwu_202508/screen/button_screen.dart';
import 'package:smwu_202508/screen/getx/my_controller.dart';


void main() { //main은 종료했다가 다시 켜야 작동
  //get package에 mycontroller 넣고 permanent로 계속 살아있게
  //ex: 장바구니
  Get.put(MyController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ButtonScreen(),
    );
  }
}