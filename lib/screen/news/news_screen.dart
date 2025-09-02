import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

//import 'package:smwu_202508/screen/network/network_practice_screen.dart';
import 'package:smwu_202508/screen/news/article.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool loading = true;
  int page = 1;
  List<Article> articles = [];
  int totalResults = 0;
  ScrollController scrollController = ScrollController();

  Future<void> getData() async {
    if (!loading) {
      loading = true;
      setState(() {});
    }

    Uri uri = Uri(
      scheme: "https",
      host: "newsapi.org",
      path: "/v2/everything",
      queryParameters: {
        "q": "google",
        "from": "2025-08-02",
        "sortBy": "publishedAt",
        "apiKey": "",
        "pageSize": "20",
        "page": page.toString(),
      },
    );

    var response = await Dio().get(uri.toString());

    totalResults = response.data["totalResults"] ?? 0;

    List<Article> tempList = [];
    tempList = (response.data["articles"] as Iterable)
        .map((e) => Article.fromJson(e))
        .toList();
    articles.addAll(tempList);

    print(articles);

    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    getData();
    scrollController.addListener(() {
      //initstate에서 작동하는 무언가의 경우 화면 새고를 해야 됨, hotfix로 바로 적용 불가
      if (scrollController.position.atEdge) {
        bool isBottom =
            scrollController.position.pixels ==
                scrollController.position.maxScrollExtent; //바닥까지 감?
        if (isBottom && totalResults > articles.length && !loading) { //갔고, 내용 더 있고, 로딩 끝남
          page++;
          getData();
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        controller: scrollController,
        itemBuilder: (context, index) {
          var model = articles[index];

          return Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  color: Colors.grey,
                  child: model.urlToImage.isEmpty
                      ? null
                      : Image.network(model.urlToImage, fit: BoxFit.cover),
                ),
                SizedBox(width: 16),
                Expanded(
                  //주어진 영역을 꽉 채워라, overflow 처리
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        model.content,
                        style: TextStyle(fontSize: 17),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        model.author,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        model.publishedAt,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: articles.length, //이거 숫자 고정하면 그 이상으로 스크롤 더 안 내려진다
      ),
    );
  }
}