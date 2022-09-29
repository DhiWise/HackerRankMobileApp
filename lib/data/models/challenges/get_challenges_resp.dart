class GetChallengesResp {
  List<Models>? models;
  Null? firstUnsolvedChallenge;
  int? total;
  Promo? promo;

  GetChallengesResp(
      {this.models, this.firstUnsolvedChallenge, this.total, this.promo});

  GetChallengesResp.fromJson(Map<String, dynamic> json) {
    if (json['models'] != null) {
      models = <Models>[];
      json['models'].forEach((v) {
        models?.add(Models.fromJson(v));
      });
    }
    firstUnsolvedChallenge = json['first_unsolved_challenge'];
    total = json['total'];
    promo = json['promo'] != null ? Promo.fromJson(json['promo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.models != null) {
      data['models'] = this.models?.map((v) => v.toJson()).toList();
    }
    if (this.firstUnsolvedChallenge != null) {
      data['first_unsolved_challenge'] = this.firstUnsolvedChallenge;
    }
    if (this.total != null) {
      data['total'] = this.total;
    }
    if (this.promo != null) {
      data['promo'] = this.promo?.toJson();
    }
    return data;
  }
}

class Models {
  bool? solved;
  bool? attempted;
  bool? canBeViewed;
  Null? canEdit;
  bool? bookmarked;
  bool? kdynamic;
  bool? hasStarted;
  bool? hasEnded;
  int? countdownTime;
  Null? requirementsDescription;
  int? maxScore;
  bool? active;
  Null? epochStarttime;
  Null? epochEndtime;
  Null? timeLeft;
  int? factor;
  bool? expertSolutionStatus;
  Null? customTabs;
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
  Null? status;
  String? createdAt;
  String? updatedAt;
  String? kind;
  String? preview;
  String? category;
  bool? deleted;
  Null? companyId;
  bool? isCustom;
  int? playerCount;
  Null? customCheckerLanguage;
  Null? checkerProgram;
  Null? judgebotLanguage;
  Null? judgebot;
  Null? onboarding;
  bool? compileAndTest;
  bool? isText;
  bool? custom;
  bool? customCase;
  bool? submitDisabled;
  bool? publicTestCases;
  bool? publicSolutions;
  bool? canSolve;
  Null? company;
  double? difficulty;
  Null? color;
  double? solvedScore;
  Null? previewFormat;
  String? difficultyName;
  List? hints;
  List<String>? tagNames;
  String? skill;
  Null? skillSlug;

  Models(
      {this.solved,
      this.attempted,
      this.canBeViewed,
      this.canEdit,
      this.bookmarked,
      this.kdynamic,
      this.hasStarted,
      this.hasEnded,
      this.countdownTime,
      this.requirementsDescription,
      this.maxScore,
      this.active,
      this.epochStarttime,
      this.epochEndtime,
      this.timeLeft,
      this.factor,
      this.expertSolutionStatus,
      this.customTabs,
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
      this.status,
      this.createdAt,
      this.updatedAt,
      this.kind,
      this.preview,
      this.category,
      this.deleted,
      this.companyId,
      this.isCustom,
      this.playerCount,
      this.customCheckerLanguage,
      this.checkerProgram,
      this.judgebotLanguage,
      this.judgebot,
      this.onboarding,
      this.compileAndTest,
      this.isText,
      this.custom,
      this.customCase,
      this.submitDisabled,
      this.publicTestCases,
      this.publicSolutions,
      this.canSolve,
      this.company,
      this.difficulty,
      this.color,
      this.solvedScore,
      this.previewFormat,
      this.difficultyName,
      this.hints,
      this.tagNames,
      this.skill,
      this.skillSlug});

  Models.fromJson(Map<String, dynamic> json) {
    solved = json['solved'];
    attempted = json['attempted'];
    canBeViewed = json['can_be_viewed'];
    canEdit = json['can_edit'];
    bookmarked = json['bookmarked'];
    kdynamic = json['dynamic'];
    hasStarted = json['has_started'];
    hasEnded = json['has_ended'];
    countdownTime = json['countdown_time'];
    requirementsDescription = json['requirements_description'];
    maxScore = json['max_score'];
    active = json['active'];
    epochStarttime = json['epoch_starttime'];
    epochEndtime = json['epoch_endtime'];
    timeLeft = json['time_left'];
    factor = json['factor'];
    expertSolutionStatus = json['expert_solution_status'];
    customTabs = json['custom_tabs'];
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
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    kind = json['kind'];
    preview = json['preview'];
    category = json['category'];
    deleted = json['deleted'];
    companyId = json['company_id'];
    isCustom = json['is_custom'];
    playerCount = json['player_count'];
    customCheckerLanguage = json['custom_checker_language'];
    checkerProgram = json['checker_program'];
    judgebotLanguage = json['judgebot_language'];
    judgebot = json['judgebot'];
    onboarding = json['onboarding'];
    compileAndTest = json['compile_and_test'];
    isText = json['is_text'];
    custom = json['custom'];
    customCase = json['custom_case'];
    submitDisabled = json['submit_disabled'];
    publicTestCases = json['public_test_cases'];
    publicSolutions = json['public_solutions'];
    canSolve = json['can_solve'];
    company = json['company'];
    difficulty = json['difficulty'];
    color = json['color'];
    solvedScore = json['solved_score'];
    previewFormat = json['preview_format'];
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
    if (this.solved != null) {
      data['solved'] = this.solved;
    }
    if (this.attempted != null) {
      data['attempted'] = this.attempted;
    }
    if (this.canBeViewed != null) {
      data['can_be_viewed'] = this.canBeViewed;
    }
    if (this.canEdit != null) {
      data['can_edit'] = this.canEdit;
    }
    if (this.bookmarked != null) {
      data['bookmarked'] = this.bookmarked;
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
    if (this.requirementsDescription != null) {
      data['requirements_description'] = this.requirementsDescription;
    }
    if (this.maxScore != null) {
      data['max_score'] = this.maxScore;
    }
    if (this.active != null) {
      data['active'] = this.active;
    }
    if (this.epochStarttime != null) {
      data['epoch_starttime'] = this.epochStarttime;
    }
    if (this.epochEndtime != null) {
      data['epoch_endtime'] = this.epochEndtime;
    }
    if (this.timeLeft != null) {
      data['time_left'] = this.timeLeft;
    }
    if (this.factor != null) {
      data['factor'] = this.factor;
    }
    if (this.expertSolutionStatus != null) {
      data['expert_solution_status'] = this.expertSolutionStatus;
    }
    if (this.customTabs != null) {
      data['custom_tabs'] = this.customTabs;
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
    if (this.status != null) {
      data['status'] = this.status;
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
    if (this.companyId != null) {
      data['company_id'] = this.companyId;
    }
    if (this.isCustom != null) {
      data['is_custom'] = this.isCustom;
    }
    if (this.playerCount != null) {
      data['player_count'] = this.playerCount;
    }
    if (this.customCheckerLanguage != null) {
      data['custom_checker_language'] = this.customCheckerLanguage;
    }
    if (this.checkerProgram != null) {
      data['checker_program'] = this.checkerProgram;
    }
    if (this.judgebotLanguage != null) {
      data['judgebot_language'] = this.judgebotLanguage;
    }
    if (this.judgebot != null) {
      data['judgebot'] = this.judgebot;
    }
    if (this.onboarding != null) {
      data['onboarding'] = this.onboarding;
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
    if (this.company != null) {
      data['company'] = this.company;
    }
    if (this.difficulty != null) {
      data['difficulty'] = this.difficulty;
    }
    if (this.color != null) {
      data['color'] = this.color;
    }
    if (this.solvedScore != null) {
      data['solved_score'] = this.solvedScore;
    }
    if (this.previewFormat != null) {
      data['preview_format'] = this.previewFormat;
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

class Promo {
  Null? meta;
  String? type;

  Promo({this.meta, this.type});

  Promo.fromJson(Map<String, dynamic> json) {
    meta = json['meta'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.meta != null) {
      data['meta'] = this.meta;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    return data;
  }
}
