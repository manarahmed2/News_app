import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  final List<ArticleModel> news = const [
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "sdjfklffffffffffffffffffffffffffffffffffffffffertyyyyyyyyyyyyyyyyyv bksa.labbbbbbbbbbbvbhhhhhhhhhh",
        subTitle:
            "heuTIWVNFJUGIHurghwovguriofi8WIVHIRHFheuTIWVNFJUGIHurghwovguriofi8WIVHIRHF"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "sdjfklffffffffffffffffffffffffffffffffffffffffertyyyyyyyyyyyyyyyyyv bksa.labbbbbbbbbbbvbhhhhhhhhhh",
        subTitle:
            "heuTIWVNFJUGIHurghwovguriofi8WIVHIRHFheuTIWVNFJUGIHurghwovguriofi8WIVHIRHF"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "sdjfklffffffffffffffffffffffffffffffffffffffffertyyyyyyyyyyyyyyyyyv bksa.labbbbbbbbbbbvbhhhhhhhhhh",
        subTitle:
            "heuTIWVNFJUGIHurghwovguriofi8WIVHIRHFheuTIWVNFJUGIHurghwovguriofi8WIVHIRHF"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "sdjfklffffffffffffffffffffffffffffffffffffffffertyyyyyyyyyyyyyyyyyv bksa.labbbbbbbbbbbvbhhhhhhhhhh",
        subTitle:
            "heuTIWVNFJUGIHurghwovguriofi8WIVHIRHFheuTIWVNFJUGIHurghwovguriofi8WIVHIRHF"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "sdjfklffffffffffffffffffffffffffffffffffffffffertyyyyyyyyyyyyyyyyyv bksa.labbbbbbbbbbbvbhhhhhhhhhh",
        subTitle:
            "heuTIWVNFJUGIHurghwovguriofi8WIVHIRHFheuTIWVNFJUGIHurghwovguriofi8WIVHIRHF")
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(articleModel: news[index]),
          );
        },
      ),
    );
  }
}
