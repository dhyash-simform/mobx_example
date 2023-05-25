// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacker_news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HackerNewsStore on HackerNewsStoreBase, Store {
  late final _$topNewsAtom =
      Atom(name: 'HackerNewsStoreBase.topNews', context: context);

  @override
  List<NewsModalStore> get topNews {
    _$topNewsAtom.reportRead();
    return super.topNews;
  }

  @override
  set topNews(List<NewsModalStore> value) {
    _$topNewsAtom.reportWrite(value, super.topNews, () {
      super.topNews = value;
    });
  }

  late final _$latestNewsAtom =
      Atom(name: 'HackerNewsStoreBase.latestNews', context: context);

  @override
  List<NewsModalStore> get latestNews {
    _$latestNewsAtom.reportRead();
    return super.latestNews;
  }

  @override
  set latestNews(List<NewsModalStore> value) {
    _$latestNewsAtom.reportWrite(value, super.latestNews, () {
      super.latestNews = value;
    });
  }

  late final _$isTopNewsLoadingAtom =
      Atom(name: 'HackerNewsStoreBase.isTopNewsLoading', context: context);

  @override
  bool get isTopNewsLoading {
    _$isTopNewsLoadingAtom.reportRead();
    return super.isTopNewsLoading;
  }

  @override
  set isTopNewsLoading(bool value) {
    _$isTopNewsLoadingAtom.reportWrite(value, super.isTopNewsLoading, () {
      super.isTopNewsLoading = value;
    });
  }

  late final _$isLatestNewsLoadingAtom =
      Atom(name: 'HackerNewsStoreBase.isLatestNewsLoading', context: context);

  @override
  bool get isLatestNewsLoading {
    _$isLatestNewsLoadingAtom.reportRead();
    return super.isLatestNewsLoading;
  }

  @override
  set isLatestNewsLoading(bool value) {
    _$isLatestNewsLoadingAtom.reportWrite(value, super.isLatestNewsLoading, () {
      super.isLatestNewsLoading = value;
    });
  }

  @override
  String toString() {
    return '''
topNews: ${topNews},
latestNews: ${latestNews},
isTopNewsLoading: ${isTopNewsLoading},
isLatestNewsLoading: ${isLatestNewsLoading}
    ''';
  }
}
