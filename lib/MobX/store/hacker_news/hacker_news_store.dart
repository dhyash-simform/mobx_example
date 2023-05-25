import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/constants/app_apis.dart';
import 'package:mobx_example/MobX/store/hacker_news/news_modal_store.dart';
import 'package:mobx_example/MobX/service/news_service.dart';

part 'hacker_news_store.g.dart';

class HackerNewsStore = HackerNewsStoreBase with _$HackerNewsStore;

abstract class HackerNewsStoreBase with Store {
  final newsService = NewsService();

  // @observable
  // List<NewsModal> topNews = [];

  @observable
  List<NewsModalStore> topNews = [];

  // @observable
  // List<NewsModal> latestNews = [];

  @observable
  List<NewsModalStore> latestNews = [];

  @observable
  bool isTopNewsLoading = false;

  @observable
  bool isLatestNewsLoading = false;

  void changeTitle(int index, String title) {
    topNews[index].changeTitle(title);
  }

  Future fetchTopNews() async {
    isTopNewsLoading = true;
    final topNewsList = await newsService.getNewsResponse(AppAPIs.topNews);
    topNews = topNewsList;
    isTopNewsLoading = false;
  }

  Future fetchLatestNews() async {
    isLatestNewsLoading = true;
    final latestNewsList =
        await newsService.getNewsResponse(AppAPIs.latestNews);
    latestNews = latestNewsList;
    isLatestNewsLoading = false;
  }
}
