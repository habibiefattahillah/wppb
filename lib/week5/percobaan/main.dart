import 'package:flutter/material.dart';
import 'package:wppb/week5/percobaan/ui/article_detail_page.dart';
import 'package:wppb/week5/percobaan/ui/article_list_page.dart';
import 'package:wppb/week5/percobaan/ui/article_web_view.dart';
import 'package:wppb/week5/percobaan/data/model/article.dart';

class Percobaan extends StatelessWidget {
  const Percobaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => ArticleListPage(),
          '/article_web': (context) => ArticleWebView(
                ModalRoute.of(context)?.settings.arguments as String,
                url: '',
              ),
          '/article_detail': (context) => ArticleDetailPage(
              ModalRoute.of(context)?.settings.arguments as Article),
        });
  }
}
