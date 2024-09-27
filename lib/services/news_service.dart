import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=8840025c16be45269b99b02fe8e22baa&country=us&category=general');

    Map<String, dynamic> jsonData = response.data; //خزنت البيانات

    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articleList.add(articleModel);
    }
    return articleList;
  }
}
