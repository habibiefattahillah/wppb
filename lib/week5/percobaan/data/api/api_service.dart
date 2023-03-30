import 'dart:convert';
import 'package:http/http.dart';

import 'package:wppb/week5/percobaan/data/model/article.dart';

class ApiService {
  static final String _baseUrl = 'https://newsapi.org/v2';
  static final String _apiKey = '59e5878b53fb431d9028f4e75be5bd75';
  static final String _category = 'business';
  static final String _country = 'id';

  Future<List<Article>> getArticles() async {
    final url = Uri.parse(
        // 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a441d239d9c1498497b7393e41d4db38',
        '$_baseUrl/top-headlines?country=us&category=$_category&apiKey=$_apiKey');
    final response = await get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result['articles'];
      print('${list}');
      return list.map((article) => Article.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
