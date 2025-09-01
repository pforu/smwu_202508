import 'package:get/get.dart';

class MyController extends GetxController {
  //get.find : get 안에 등록된 controller 불러옴
  //mycontroller : return type
  //get : 불러오기 키워드
  //to : 변수명
  //static : 생성자 없이 호출 가능
  static MyController get to => Get.find<MyController>();

  RxInt count = 0.obs;

  void countUp() {
    count.value++;
  }
}