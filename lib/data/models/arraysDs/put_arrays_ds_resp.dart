class PutArraysDsResp {
  Model? model;
  bool? status;

  PutArraysDsResp({this.model, this.status});

  PutArraysDsResp.fromJson(Map<String, dynamic> json) {
    model = json['model'] != null ? Model.fromJson(json['model']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.model != null) {
      data['model'] = this.model?.toJson();
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    return data;
  }
}

class Model {
  bool? bookmarked;

  Model({this.bookmarked});

  Model.fromJson(Map<String, dynamic> json) {
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
