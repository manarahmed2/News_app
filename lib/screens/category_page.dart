import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.category,
  });

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomePage();
            }));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category),
        ],
      ),
    );
  }
}
