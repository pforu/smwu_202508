import 'package:flutter/material.dart';

class News {
  String title = "ASDFASDFASDFASDFASDFASDFASDFASDF";
  String contents = "asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf";
  String name = "ooo";
  String date = "2025.08.27 04:46";

  //News(this.title, this.contents, this.name, this.date);

  @override
  String toString() {
    return 'News{title: $title, contents: $contents, name: $name, date: $date}';
  }
}

class NetworkPracticeScreen extends StatelessWidget {
  const NetworkPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<News> newsList = [];
    for (int i = 0; i < 10; i++) {
      News news = News();
      newsList.add(news);
    }
    return Scaffold(
      appBar: AppBar(title: Text("News"),),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 24),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 100, height: 100, color: Colors.grey,),
                Column(
                  children: [
                    Text(
                      newsList[index].title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      newsList[index].contents,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10,),
                    Text(
                      newsList[index].name,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      newsList[index].date,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                )

              ],
            );
          }
      )
    );
  }
}
