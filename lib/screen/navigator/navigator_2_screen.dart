import 'package:flutter/material.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({required this.count, super.key});

  final int count;

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {
  int count2 = 0;

  @override
  void initState() {
    //이 안에서는 setstate를 못 씀, 빌드 완료 후 호출 가능
    // TODO: implement initState
    count2 = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //이게 빌드
    return Scaffold(
      appBar: AppBar(title: Text("Navigator 2")),
      body: Column(
        children: [
          Text(count2.toString()),
          ElevatedButton(onPressed: () {
            count2 += 2;
            setState(() {

            });
          }, child: Text("Count UP")),
          ElevatedButton(
            onPressed: () {
              //뒤로가기
              Navigator.pop(context, count2);
            },
            child: Text("pop"),
          ),
        ],
      ),
    );
  }
}
