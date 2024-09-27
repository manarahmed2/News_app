import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/services/news_service.dart';

void main() {
  NewsService(dio: Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
