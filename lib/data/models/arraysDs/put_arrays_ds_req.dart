class PutArraysDsReq {
  bool? bookmarked;

  PutArraysDsReq({this.bookmarked});

  PutArraysDsReq.fromJson(Map<String, dynamic> json) {
    bookmarked = json['bookmarked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.bookmarked != null) {
      data['bookmarked'] = this.bookmarked;
    }
    return data;
  }
}
