import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/column/column_practice_screen.dart';
import 'package:smwu_202508/screen/row/column_row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerScreen();
                    },
                  ),
                );
              },
              child: Text("Container"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContainerPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Container 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnScreen();
                    },
                  ),
                );
              },
              child: Text("Column"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Column 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowScreen();
                    },
                  ),
                );
              },
              child: Text("Row"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RowPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Row 실습"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //눌렸을 때 중괄호 진입
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColumnRowPracticeScreen();
                    },
                  ),
                );
              },
              child: Text("Column, Row 심화"),
            ),
          ],
        ),
      ),
    );
  }
}
