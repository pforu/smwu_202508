import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: SizedBox(
        height: 200,
        child: ListView(
          children: [
            Text("A", style: TextStyle(fontSize: 20)),
            Text("A", style: TextStyle(fontSize: 20)),
            Text("A", style: TextStyle(fontSize: 20)),
            Text("A", style: TextStyle(fontSize: 20)),
            Text("A", style: TextStyle(fontSize: 20)),
            Text("A", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
