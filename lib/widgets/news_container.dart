import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_page.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "manar",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/bis.jpeg"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
        height: 200,
        width: double.infinity,
      ),
    );
  }
}
