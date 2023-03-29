import 'package:flutter/material.dart';
import 'package:wppb/week5/percobaan/data/model/article.dart';
import 'package:wppb/week5/percobaan/data/ui/detail_page.dart';
import 'package:wppb/week5/percobaan/data/ui/list_page.dart';
import 'package:wppb/week5/percobaan/data/ui/web_view.dart';

class Percobaan extends StatelessWidget {
  const Percobaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => NewsListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
            ),
        ArticleWebView.routeName: (context) => ArticleWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            )
      },
    );
  }
}
