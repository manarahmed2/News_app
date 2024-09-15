import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  final List<CategoryModel> cards = const [
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
  ];
  final List<CategoryModel> containers = const [
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
    CategoryModel(image: "assets/images/bis.jpeg", categoryName: "Manar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "News ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Giving the ListView a fixed height
            SizedBox(
                height: 100,
                // Fixed height for ListView
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        category: cards[index],
                      );
                    })),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: SizedBox(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: containers.length,
                      itemBuilder: (context, index) {
                        return NewsContainer(
                          category: containers[index],
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
