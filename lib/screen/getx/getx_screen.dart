import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smwu_202508/screen/getx/my_controller.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

//getx, block, 등

class _GetxScreenState extends State<GetxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Getx"),),
    body: Column(
      children: [
        //Getx 상태관리의 2가지 요소
        // 1. Rx로 선언된 변수
        // 2. Obx로 감쌀 것
        Obx(() {
          return Text(MyController.to.count.value.toString());
          //Obx를 참조하고 있는 화면들은 얘만 보면 됨
        },),

        ElevatedButton(onPressed: () {
          MyController.to.countUp();
        }, child: Text("CountUp")),
        ElevatedButton(onPressed: () {
          //다른 화면에서 확인용
        }, child: Text("Move"))
      ],
    ),);
  }
}
