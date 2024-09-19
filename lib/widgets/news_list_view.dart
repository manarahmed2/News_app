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
            " As global concerns about climate change grow, many countries and companies have begun investing heavily in green technology, which focuses on reducing environmental impact and enhancing resource sustainability. Technologies such as solar, wind, and electric transportation are experiencing an unprecedented boom, with expectations that they will become an essential part of people’s daily lives by 2024.",
        subTitle:
            "Green Technology to Lead the Shift to a Sustainable Future in 2024"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "As global concerns about climate change grow, many countries and companies have begun investing heavily in green technology, which focuses on reducing environmental impact and enhancing resource sustainability. Technologies such as solar, wind, and electric transportation are experiencing an unprecedented boom, with expectations that they will become an essential part of people’s daily lives by 2024.",
        subTitle:
            "Green Technology to Lead the Shift to a Sustainable Future in 2024"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "As global concerns about climate change grow, many countries and companies have begun investing heavily in green technology, which focuses on reducing environmental impact and enhancing resource sustainability. Technologies such as solar, wind, and electric transportation are experiencing an unprecedented boom, with expectations that they will become an essential part of people’s daily lives by 2024.",
        subTitle:
            "Green Technology to Lead the Shift to a Sustainable Future in 2024"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "As global concerns about climate change grow, many countries and companies have begun investing heavily in green technology, which focuses on reducing environmental impact and enhancing resource sustainability. Technologies such as solar, wind, and electric transportation are experiencing an unprecedented boom, with expectations that they will become an essential part of people’s daily lives by 2024.",
        subTitle:
            "Green Technology to Lead the Shift to a Sustainable Future in 2024"),
    ArticleModel(
        image: "assets/images/bis.jpeg",
        title:
            "As global concerns about climate change grow, many countries and companies have begun investing heavily in green technology, which focuses on reducing environmental impact and enhancing resource sustainability. Technologies such as solar, wind, and electric transportation are experiencing an unprecedented boom, with expectations that they will become an essential part of people’s daily lives by 2024.",
        subTitle:
            "Green Technology to Lead the Shift to a Sustainable Future in 2024")
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
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
