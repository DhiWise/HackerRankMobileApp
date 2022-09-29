class GetAlgorithmsChallengesResp {
  List<Models>? models;
  Null? firstUnsolvedChallenge;
  int? total;
  bool? tutorialSignedUp;
  CurrentTrack? currentTrack;
  Promo? promo;

  GetAlgorithmsChallengesResp(
      {this.models,
      this.firstUnsolvedChallenge,
      this.total,
      this.tutorialSignedUp,
      this.currentTrack,
      this.promo});

  GetAlgorithmsChallengesResp.fromJson(Map<String, dynamic> json) {
    if (json['models'] != null) {
      models = <Models>[];
      json['models'].forEach((v) {
        models?.add(Models.fromJson(v));
      });
    }
    firstUnsolvedChallenge = json['first_unsolved_challenge'];
    total = json['total'];
    tutorialSignedUp = json['tutorial_signed_up'];
    currentTrack = json['current_track'] != null
        ? CurrentTrack.fromJson(json['current_track'])
        : null;
    promo = json['promo'] != null ? Promo.fromJson(json['promo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.models != null) {
      data['models'] = this.models?.map((v) => v.toJson()).toList();
    }
    if (this.total != null) {
      data['total'] = this.total;
    }
    if (this.tutorialSignedUp != null) {
      data['tutorial_signed_up'] = this.tutorialSignedUp;
    }
    if (this.currentTrack != null) {
      data['current_track'] = this.currentTrack?.toJson();
    }
    if (this.promo != null) {
      data['promo'] = this.promo?.toJson();
    }
    return data;
  }
}

class Models {
  bool? canBeViewed;
  bool? kdynamic;
  bool? hasStarted;
  bool? hasEnded;
  int? countdownTime;
  int? maxScore;
  bool? active;
  int? factor;
  bool? expertSolutionStatus;
  int? totalCount;
  int? solvedCount;
  double? successRatio;
  bool? isEditorialAvailable;
  bool? isSolutionUnlocked;
  String? contestSlug;
  List? topics;
  int? userScore;
  Track? track;
  int? id;
  String? slug;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? kind;
  String? preview;
  String? category;
  bool? deleted;
  bool? isCustom;
  int? playerCount;
  bool? compileAndTest;
  bool? isText;
  bool? custom;
  bool? customCase;
  bool? submitDisabled;
  bool? publicTestCases;
  bool? publicSolutions;
  bool? canSolve;
  double? difficulty;
  double? solvedScore;
  String? difficultyName;
  List? hints;
  List<String>? tagNames;
  String? skill;
  String? skillSlug;

  Models(
      {this.canBeViewed,
      this.kdynamic,
      this.hasStarted,
      this.hasEnded,
      this.countdownTime,
      this.maxScore,
      this.active,
      this.factor,
      this.expertSolutionStatus,
      this.totalCount,
      this.solvedCount,
      this.successRatio,
      this.isEditorialAvailable,
      this.isSolutionUnlocked,
      this.contestSlug,
      this.topics,
      this.userScore,
      this.track,
      this.id,
      this.slug,
      this.name,
      this.createdAt,
      this.updatedAt,
      this.kind,
      this.preview,
      this.category,
      this.deleted,
      this.isCustom,
      this.playerCount,
      this.compileAndTest,
      this.isText,
      this.custom,
      this.customCase,
      this.submitDisabled,
      this.publicTestCases,
      this.publicSolutions,
      this.canSolve,
      this.difficulty,
      this.solvedScore,
      this.difficultyName,
      this.hints,
      this.tagNames,
      this.skill,
      this.skillSlug});

  Models.fromJson(Map<String, dynamic> json) {
    canBeViewed = json['can_be_viewed'];
    kdynamic = json['dynamic'];
    hasStarted = json['has_started'];
    hasEnded = json['has_ended'];
    countdownTime = json['countdown_time'];
    maxScore = json['max_score'];
    active = json['active'];
    factor = json['factor'];
    expertSolutionStatus = json['expert_solution_status'];
    totalCount = json['total_count'];
    solvedCount = json['solved_count'];
    successRatio = json['success_ratio'];
    isEditorialAvailable = json['is_editorial_available'];
    isSolutionUnlocked = json['is_solution_unlocked'];
    contestSlug = json['contest_slug'];
    if (json['topics'] != null) {
      topics = [];
      json['topics'].forEach((v) {
        topics?.add(v);
      });
    }
    userScore = json['user_score'];
    track = json['track'] != null ? Track.fromJson(json['track']) : null;
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    kind = json['kind'];
    preview = json['preview'];
    category = json['category'];
    deleted = json['deleted'];
    isCustom = json['is_custom'];
    playerCount = json['player_count'];
    isText = json['is_text'];
    custom = json['custom'];
    customCase = json['custom_case'];
    submitDisabled = json['submit_disabled'];
    publicTestCases = json['public_test_cases'];
    publicSolutions = json['public_solutions'];
    canSolve = json['can_solve'];
    difficulty = json['difficulty'];
    solvedScore = json['solved_score'];
    difficultyName = json['difficulty_name'];
    if (json['hints'] != null) {
      hints = [];
      json['hints'].forEach((v) {
        hints?.add(v);
      });
    }
    tagNames = json['tag_names'].cast<String>();
    skill = json['skill'];
    skillSlug = json['skill_slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.canBeViewed != null) {
      data['can_be_viewed'] = this.canBeViewed;
    }
    if (this.kdynamic != null) {
      data['dynamic'] = this.kdynamic;
    }
    if (this.hasStarted != null) {
      data['has_started'] = this.hasStarted;
    }
    if (this.hasEnded != null) {
      data['has_ended'] = this.hasEnded;
    }
    if (this.countdownTime != null) {
      data['countdown_time'] = this.countdownTime;
    }
    if (this.maxScore != null) {
      data['max_score'] = this.maxScore;
    }
    if (this.active != null) {
      data['active'] = this.active;
    }
    if (this.factor != null) {
      data['factor'] = this.factor;
    }
    if (this.expertSolutionStatus != null) {
      data['expert_solution_status'] = this.expertSolutionStatus;
    }
    if (this.totalCount != null) {
      data['total_count'] = this.totalCount;
    }
    if (this.solvedCount != null) {
      data['solved_count'] = this.solvedCount;
    }
    if (this.successRatio != null) {
      data['success_ratio'] = this.successRatio;
    }
    if (this.isEditorialAvailable != null) {
      data['is_editorial_available'] = this.isEditorialAvailable;
    }
    if (this.isSolutionUnlocked != null) {
      data['is_solution_unlocked'] = this.isSolutionUnlocked;
    }
    if (this.contestSlug != null) {
      data['contest_slug'] = this.contestSlug;
    }
    if (this.topics != null) {
      data['topics'] = this.topics?.map((v) => v).toList();
    }
    if (this.userScore != null) {
      data['user_score'] = this.userScore;
    }
    if (this.track != null) {
      data['track'] = this.track?.toJson();
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.kind != null) {
      data['kind'] = this.kind;
    }
    if (this.preview != null) {
      data['preview'] = this.preview;
    }
    if (this.category != null) {
      data['category'] = this.category;
    }
    if (this.deleted != null) {
      data['deleted'] = this.deleted;
    }
    if (this.isCustom != null) {
      data['is_custom'] = this.isCustom;
    }
    if (this.playerCount != null) {
      data['player_count'] = this.playerCount;
    }
    if (this.compileAndTest != null) {
      data['compile_and_test'] = this.compileAndTest;
    }
    if (this.isText != null) {
      data['is_text'] = this.isText;
    }
    if (this.custom != null) {
      data['custom'] = this.custom;
    }
    if (this.customCase != null) {
      data['custom_case'] = this.customCase;
    }
    if (this.submitDisabled != null) {
      data['submit_disabled'] = this.submitDisabled;
    }
    if (this.publicTestCases != null) {
      data['public_test_cases'] = this.publicTestCases;
    }
    if (this.publicSolutions != null) {
      data['public_solutions'] = this.publicSolutions;
    }
    if (this.canSolve != null) {
      data['can_solve'] = this.canSolve;
    }

    if (this.difficulty != null) {
      data['difficulty'] = this.difficulty;
    }

    if (this.solvedScore != null) {
      data['solved_score'] = this.solvedScore;
    }

    if (this.difficultyName != null) {
      data['difficulty_name'] = this.difficultyName;
    }
    if (this.hints != null) {
      data['hints'] = this.hints?.map((v) => v).toList();
    }
    if (this.tagNames != null) {
      data['tag_names'] = this.tagNames;
    }
    if (this.skill != null) {
      data['skill'] = this.skill;
    }
    if (this.skillSlug != null) {
      data['skill_slug'] = this.skillSlug;
    }
    return data;
  }
}

class Track {
  int? id;
  String? name;
  String? slug;
  int? trackId;
  String? trackName;
  String? trackSlug;

  Track(
      {this.id,
      this.name,
      this.slug,
      this.trackId,
      this.trackName,
      this.trackSlug});

  Track.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    trackId = json['track_id'];
    trackName = json['track_name'];
    trackSlug = json['track_slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.trackId != null) {
      data['track_id'] = this.trackId;
    }
    if (this.trackName != null) {
      data['track_name'] = this.trackName;
    }
    if (this.trackSlug != null) {
      data['track_slug'] = this.trackSlug;
    }
    return data;
  }
}

class CurrentTrack {
  int? id;
  String? name;
  String? slug;
  int? priority;
  String? descriptions;
  bool? rewardsSystemEnabled;

  CurrentTrack({
    this.id,
    this.name,
    this.slug,
    this.priority,
    this.descriptions,
    this.rewardsSystemEnabled,
  });

  CurrentTrack.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    priority = json['priority'];
    descriptions = json['descriptions'];
    rewardsSystemEnabled = json['rewards_system_enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.priority != null) {
      data['priority'] = this.priority;
    }
    if (this.descriptions != null) {
      data['descriptions'] = this.descriptions;
    }
    if (this.rewardsSystemEnabled != null) {
      data['rewards_system_enabled'] = this.rewardsSystemEnabled;
    }

    return data;
  }
}

class Promo {
  String? type;

  Promo({this.type});

  Promo.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (this.type != null) {
      data['type'] = this.type;
    }
    return data;
  }
}
