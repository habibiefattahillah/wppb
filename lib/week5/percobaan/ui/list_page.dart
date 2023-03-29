import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:wppb/week5/percobaan/data/model/article.dart';
import 'package:wppb/week5/percobaan/ui/detail_page.dart';
import 'package:wppb/week5/percobaan/data/api/api_service.dart';

class NewsListPage extends StatelessWidget {
  static const routeName = '/article_list';
  final ApiService _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News App'),
        ),
        body: FutureBuilder(
          future: _apiService.getArticles(),
          builder: (context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasData) {
              List<Article> articles = snapshot.data!;
              return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(context, articles[index]);
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Failed to load articles'));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}

List<Article> parseArticles(String? json) {
  if (json == null) {
    return [];
  }
  final List parsed = jsonDecode(json);
  return parsed.map((json) => Article.fromJson(json)).toList();
}

Widget _buildArticleItem(BuildContext context, Article article) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    leading: Image.network(
      article.urlToImage,
      width: 100,
    ),
    title: Text(article.title),
    subtitle: Text(article.author),
    onTap: () {
      Navigator.pushNamed(context, ArticleDetailPage.routeName,
          arguments: article);
    },
  );
}
