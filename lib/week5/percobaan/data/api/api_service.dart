import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:wppb/week5/percobaan/data/model/article.dart';

class Module5Service1 {
  Future<List<Module5Model1>> getAllNews() async {
    List<Module5Model1> list = [];
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a441d239d9c1498497b7393e41d4db38"));

    final data = jsonDecode(response.body);
    for (var element in (data['articles'] as List)) {
      if (element['urlToImage'] != null) {
        list.add(Module5Model1.fromJson(element));
      }
    }
    return list;
  }
}
