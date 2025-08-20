import 'package:flutter/material.dart';

class ScrollviewScreen extends StatelessWidget {
  const ScrollviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scrollview"),),
      body: SizedBox(
        width: 200, height: 300,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50), //처음에 50만큼의 공백
          scrollDirection: Axis.horizontal, //가로스크롤
          child: Row(
            children: [
              Text("가"),
              SizedBox(width: 50),
              Text("나"),
              SizedBox(width: 50),
              Text("다"),
              SizedBox(width: 50),
              Text("라"),
              SizedBox(width: 50),
              Text("마"),
              SizedBox(width: 50),
              Text("바"),
              SizedBox(width: 50),
              Text("사"),
              SizedBox(width: 50),
              Text("아"),
              SizedBox(width: 50),
              Text("자"),
            ],
          ),
        ),
      ),
    );
  }
}
