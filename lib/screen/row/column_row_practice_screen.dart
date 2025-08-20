import 'package:flutter/material.dart';

class ColumnRowPracticeScreen extends StatelessWidget {
  const ColumnRowPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column, Row 심화")),
      body: Container(
        height: 500,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(width: 100, height: 100, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(width: 100, height: 100, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 50, color: Colors.yellow),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(width: 50, height: 50, color: Colors.yellow),
                    Container(width: 50, height: 50, color: Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
