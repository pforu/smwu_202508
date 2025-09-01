import 'package:flutter/material.dart';

class NewsModel {
  String title = "ASDFASDFASDFASDFASDFASDFASDFASDFASDFASDFASDFASDFASDFASDFASDFASDF";
  String contents = "asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf";
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
    List<NewsModel> newsList = [];
    for (int i = 0; i < 10; i++) {
      NewsModel news = NewsModel();
      newsList.add(news);
    }
    return Scaffold(
      appBar: AppBar(title: Text("News"),),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 24),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start, //부모랑
              children: [
                Container(width: 100, height: 100, color: Colors.grey, padding: EdgeInsets.all(10),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start, //자식 세트
                      children: [
                        Text(
                          newsList[index].title,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          // textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          newsList[index].contents,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          newsList[index].name,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey
                          ),
                        ),
                        Text(
                          newsList[index].date,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            );
          }
      )
    );
  }
}
