import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wppb/week5/percobaan/data/model/article.dart';
import 'package:wppb/week5/percobaan/ui/article_web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  const ArticleDetailPage(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News App')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Hero(
            tag: article.urlToImage!,
            child: Image.network(article.urlToImage!),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Divider(color: Colors.grey),
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Divider(color: Colors.grey),
                Text(
                  'Date: ${article.publishedAt}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Divider(color: Colors.grey),
                Text(
                  'Author: ${article.author}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Divider(color: Colors.grey),
                Text(
                  article.content ?? '',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Divider(color: Colors.grey),
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Read More'),
                  onPressed: () {
                    Navigator.pushNamed(context, ArticleWebView.routeName,
                        arguments: article.url);
                  },
                )
              ],
            )
          )
        ],
      )),
    );
  }
}
