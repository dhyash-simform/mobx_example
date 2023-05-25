import 'package:mobx/mobx.dart';

part 'news_modal_store.g.dart';

class NewsModalStore = NewsModalBase with _$NewsModalStore;

abstract class NewsModalBase with Store {
  String? by;
  int? id;
  @observable
  String? title;
  String? type;

  NewsModalBase({
    this.by,
    this.id,
    this.title,
    this.type,
  });

  @action
  void changeTitle(String newTitle) {
    title = newTitle;
  }

  NewsModalBase.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    id = json['id'];
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['by'] = by;
    data['id'] = id;
    data['title'] = title;
    data['type'] = type;
    return data;
  }
}
