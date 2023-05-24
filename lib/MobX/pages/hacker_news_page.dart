import 'package:flutter/material.dart';
import 'package:mobx_example/MobX/pages/latest_news_page.dart';
import 'package:mobx_example/MobX/pages/top_news_page.dart';
import 'package:mobx_example/MobX/store/hacker_news/hacker_news_store.dart';

class HackerNewsPage extends StatefulWidget {
  const HackerNewsPage({Key? key}) : super(key: key);

  @override
  State<HackerNewsPage> createState() => _HackerNewsPageState();
}

class _HackerNewsPageState extends State<HackerNewsPage>
    with SingleTickerProviderStateMixin {
  final HackerNewsStore hackerNewsStore = HackerNewsStore();
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hacker News'),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: 'Top News',
            ),
            Tab(
              text: 'Latest News',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          TopNewsPage(
            hackerNewsStore: hackerNewsStore,
          ),
          LatestNewsPage(
            hackerNewsStore: hackerNewsStore,
          ),
        ],
      ),
    );
  }
}
