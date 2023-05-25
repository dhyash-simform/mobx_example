import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/hacker_news/hacker_news_store.dart';

class TopNewsPage extends StatefulWidget {
  final HackerNewsStore hackerNewsStore;

  const TopNewsPage({Key? key, required this.hackerNewsStore})
      : super(key: key);

  @override
  State<TopNewsPage> createState() => _TopNewsPageState();
}

class _TopNewsPageState extends State<TopNewsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    widget.hackerNewsStore.fetchTopNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => widget.hackerNewsStore.changeTitle(1, 'New Title'),
      ),
      body: Observer(
        builder: (_) {
          return widget.hackerNewsStore.isTopNewsLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  itemCount: widget.hackerNewsStore.topNews.length,
                  itemBuilder: (_, index) {
                    return Observer(
                      builder: (_) => ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        title: Text(
                          widget.hackerNewsStore.topNews[index].title ?? '',
                        ),
                        tileColor: Colors.black.withOpacity(0.08),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 15,
                  ),
                );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
