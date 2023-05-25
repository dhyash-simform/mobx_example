class NewsModel {
  String? by;
  int? descendants;
  int? id;
  int? score;
  int? time;
  String? title;
  String? type;
  String? url;

  NewsModel(
      {this.by,
      this.descendants,
      this.id,
      this.score,
      this.time,
      this.title,
      this.type,
      this.url});

  NewsModel.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    descendants = json['descendants'];
    id = json['id'];
    score = json['score'];
    time = json['time'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['by'] = by;
    data['descendants'] = descendants;
    data['id'] = id;
    data['score'] = score;
    data['time'] = time;
    data['title'] = title;
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}
