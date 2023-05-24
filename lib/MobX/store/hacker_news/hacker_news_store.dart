import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/constants/app_apis.dart';
import 'package:mobx_example/MobX/model/news_modal.dart';
import 'package:mobx_example/MobX/service/news_service.dart';

part 'hacker_news_store.g.dart';

class HackerNewsStore = HackerNewsStoreBase with _$HackerNewsStore;

abstract class HackerNewsStoreBase with Store {
  final newsService = NewsService();

  // ObservableFuture<List<NewsModal>> topNews = ObservableFuture.value([]);
  // ObservableFuture<List<NewsModal>> latestNews = ObservableFuture.value([]);

  @observable
  List<NewsModal> topNews = [];

  @observable
  List<NewsModal> latestNews = [];

  @observable
  bool isTopNewsLoading = false;

  @observable
  bool isLatestNewsLoading = false;


  Future getTopNews() async {
    isTopNewsLoading = true;
    final topNewsList = await newsService.getNews(AppAPIs.topNews);
    topNews = topNewsList;
    isTopNewsLoading = false;
  }


  void changeTitle(int index) {
    topNews[index].title = 'New Title';
  }


  Future getLatestNews() async {
    isLatestNewsLoading = true;
    final latestNewsList = await newsService.getNews(AppAPIs.latestNews);
    latestNews = latestNewsList;
    isLatestNewsLoading = false;
  }

// HackerNewsStoreBase() {
//   fetchTopNews();
//   fetchLatestNews();
// }

// Future fetchTopNews() => topNews = ObservableFuture(
//       newsService.getNews(AppAPIs.topNews),
//     );

// Future fetchLatestNews() => latestNews = ObservableFuture(
//       newsService.getNews(AppAPIs.latestNews),
//     );
}
