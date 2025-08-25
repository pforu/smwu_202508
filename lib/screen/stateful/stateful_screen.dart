import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/stateful/inner_state.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful")),
      body: Column(
        children: [
          Text("Count : $count"),
          TextButton(
            onPressed: () {
              count++;
              setState(() {}); //얘가 화면 갱신, stateful screen 안에서만 돌아감
            },
            child: Text("Count Up"),
          ),
          InnerState(count: count),
        ],
      ),
    );
  }
}
