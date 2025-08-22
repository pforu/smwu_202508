import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dataList = ["a", "b"];
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder")),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Text(dataList[index]);
        },
      ),
    );
  }
}
