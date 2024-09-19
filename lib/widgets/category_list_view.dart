import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> cards = const [
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Business"),
    CategoryModel(image: "assets/images/health.jpeg", categoryName: "Health"),
    CategoryModel(image: "assets/images/science.jpeg", categoryName: "Science"),
    CategoryModel(
        image: "assets/images/technology.jpeg", categoryName: "Technology"),
    CategoryModel(
        image: "assets/images/entertaiment.jpeg",
        categoryName: "Entertainment"),
    CategoryModel(image: "assets/images/sports.jpeg", categoryName: "Sports"),
    CategoryModel(image: "assets/images/general.jpeg", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: cards[index]);
        },
      ),
    );
  }
}
