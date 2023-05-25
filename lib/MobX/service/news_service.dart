import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'package:mobx_example/MobX/store/hacker_news/news_modal_store.dart';

class NewsService {
  Future<NewsModalStore> getDetailNewsResponse(int id) async {
    try {
      final response = await http.get(
        Uri.parse('https://hacker-news.firebaseio.com/v0/item/$id.json'),
      );
      final data = json.decode(response.body);
      return NewsModalStore.fromJson(data);
    } catch (e) {
      log('Error: $e', name: 'getDetailNews()');
      rethrow;
    }
  }

  Future<List<NewsModalStore>> getNewsResponse(String url) async {
    List<NewsModalStore> newsList = [];
    try {
      final response = await http.get(Uri.parse(url));
      final data = json.decode(response.body) as List<dynamic>;
      List<int> listOfNews = data.map((e) => int.parse(e.toString())).toList();
      for (int i = 0; i < 5; i++) {
        NewsModalStore news = await getDetailNewsResponse(listOfNews[i]);
        newsList.add(news);
      }
      return newsList;
    } catch (e) {
      log('Error: $e', name: 'getNews()');
      rethrow;
    }
  }
}
