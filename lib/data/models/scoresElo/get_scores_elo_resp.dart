class GetScoresEloResp {
  int? trackId;
  String? name;
  String? slug;
  Practice? practice;
  Contest? contest;

  GetScoresEloResp(
      {this.trackId, this.name, this.slug, this.practice, this.contest});

  GetScoresEloResp.fromJson(Map<String, dynamic> json) {
    trackId = json['track_id'];
    name = json['name'];
    slug = json['slug'];
    practice =
        json['practice'] != null ? Practice.fromJson(json['practice']) : null;
    contest =
        json['contest'] != null ? Contest.fromJson(json['contest']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.trackId != null) {
      data['track_id'] = this.trackId;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.practice != null) {
      data['practice'] = this.practice?.toJson();
    }
    if (this.contest != null) {
      data['contest'] = this.contest?.toJson();
    }
    return data;
  }
}

class Practice {
  int? hackerId;
  int? score;
  int? rank;
  List? locationOnLeaderboard;

  Practice({this.hackerId, this.score, this.rank, this.locationOnLeaderboard});

  Practice.fromJson(Map<String, dynamic> json) {
    hackerId = json['hacker_id'];
    score = json['score'];
    rank = json['rank'];
    if (json['location_on_leaderboard'] != null) {
      locationOnLeaderboard = [];
      json['location_on_leaderboard'].forEach((v) {
        locationOnLeaderboard?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.hackerId != null) {
      data['hacker_id'] = this.hackerId;
    }
    if (this.score != null) {
      data['score'] = this.score;
    }
    if (this.rank != null) {
      data['rank'] = this.rank;
    }
    if (this.locationOnLeaderboard != null) {
      data['location_on_leaderboard'] =
          this.locationOnLeaderboard?.map((v) => v).toList();
    }
    return data;
  }
}

class Contest {
  int? score;
  String? rank;
  int? level;

  Contest({this.score, this.rank, this.level});

  Contest.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    rank = json['rank'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.score != null) {
      data['score'] = this.score;
    }
    if (this.rank != null) {
      data['rank'] = this.rank;
    }
    if (this.level != null) {
      data['level'] = this.level;
    }
    return data;
  }
}
