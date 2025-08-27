import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //async 없을 때는 전, 후, (1초), 끝으로 찍힘
          // 전, 끝, 후로 실행되는데 delay가 있기 때문
          // async-await 쓰면 delay에서 코드가 기다림
          ElevatedButton(onPressed: () async {
            print("시작 전");
            // await Future.delayed(Duration(milliseconds: 1000), () {
            //   print("Delay 끝");
            // },);
            String value = await futureBasic();
            print("시작 후 : $value");
          }, child: Text("Delay"))
        ],
      ),
    );
  }

  // future 리턴 x -> async 필요
  // future 리턴형의 함수는 then 사용 가능, API network에서 썼음
  Future<String> futureBasic() async {
    await Future.delayed(Duration(milliseconds: 1500));
    return "result";
  }
}
