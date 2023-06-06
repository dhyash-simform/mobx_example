import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/hacker_news/hacker_news_store.dart';

class LatestNewsPage extends StatefulWidget {
  final HackerNewsStore hackerNewsStore;

  const LatestNewsPage({Key? key, required this.hackerNewsStore})
      : super(key: key);

  @override
  State<LatestNewsPage> createState() => _LatestNewsPageState();
}

class _LatestNewsPageState extends State<LatestNewsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    widget.hackerNewsStore.fetchLatestNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (widget.hackerNewsStore.isLatestNewsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.separated(
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              itemCount: widget.hackerNewsStore.latestNews.length,
              itemBuilder: (_, index) => ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                title: Text(
                  widget.hackerNewsStore.latestNews[index].title ?? '',
                ),
                tileColor: Colors.black.withOpacity(0.08),
              ),
              separatorBuilder: (_, index) => const SizedBox(
                height: 15,
              ),
            );
          }
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
