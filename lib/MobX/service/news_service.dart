import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx_example/MobX/model/news_modal.dart';

class NewsService {
  Future<NewsModal> getDetailNews(int id) async {
    final response = await http.get(
      Uri.parse('https://hacker-news.firebaseio.com/v0/item/$id.json'),
    );
    final data = json.decode(response.body);
    return NewsModal.fromJson(data);
  }

  Future<List<NewsModal>> getNews(String url) async {
    List<NewsModal> newsList = [];
    final response = await http.get(Uri.parse(url));
    final data = json.decode(response.body) as List<dynamic>;
    List<int> listOfNews = data.map((e) => int.parse(e.toString())).toList();
    for (int i = 0; i < 5; i++) {
      NewsModal news = await getDetailNews(listOfNews[i]);
      newsList.add(news);
    }
    return newsList;
  }
}
