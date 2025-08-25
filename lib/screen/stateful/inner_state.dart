import 'package:flutter/material.dart';

class InnerState extends StatefulWidget {
  const InnerState({required this.count, super.key}); // 1. 호출될 때 count를 받음

  final int count; //count를 가지기 때문

  @override
  State<InnerState> createState() => _InnerStateState(); // 2. 상태는 얘(_)가 관리함
}

class _InnerStateState extends State<InnerState> {
  int innerCount = 0; // 3. 이쪽에서는 변수 따로 만듦

  @override
  void initState() {
    //stateful 위젯이 최초 생성될 때 한 번만 호출
    // TODO: implement initState
    super.initState(); //클래스명에 있는 State<InnerState>(내부클래스)를 상속
    innerCount = widget.count; // 4. 받아온 count로 초기화
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(innerCount.toString()),
        ElevatedButton(
          onPressed: () {
            innerCount++;
            setState(() {});
          },
          child: Text("Inner count up"),
        ),
      ],
    );
  }
}
