class GetMeResp {
  Model? model;
  bool? status;

  GetMeResp({this.model, this.status});

  GetMeResp.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? username;
  String? country;
  // Null? school;
  // Null? languages;
  String? createdAt;
  int? level;
  String? email;
  /*Null? fbUid;
  Null? ghUid;
  Null? liUid;*/
  bool? isAdmin;
  bool? supportAdmin;
  String? avatar;
  String? website;
  // Null? shortBio;
  // Null? usernameChangeCount;
  String? name;
  String? personalFirstName;
  String? personalLastName;
  String? company;
  // Null? localLanguage;
  bool? hasAvatarUrl;
  // Null? hideAccountChecklist;
  // Null? spamUser;
  String? jobTitle;
  // Null? jobsHeadline;
  // Null? linkedinUrl;
  // Null? githubUrl;
  Errors? errors;
  bool? confirmed;
  // Null? facebookAllowOpengraph;
  // Null? tsize;
  bool? isMigrated;
  /*Null? facebookOpengraphAccessAvailable;
  Null? promisedLoginTime;
  Null? lastLogoutFeedback;*/
  bool? chatEnabled;
  // Null? tourDone;
  bool? usernameAutoset;
  String? keyPrefix;
  String? notificationsUrl;
  /*Null? resumeUrl;
  Null? relocate;
  Null? phone;
  Null? phoneNumber;
  Null? blogUrl;
  Null? collegeMajor;
  Null? collegeMajorId;
  Null? jobsConsent;*/
  String? graduationYear;
  /*Null? graduationMonth;
  Null? collegeYear;
  Null? collegeMajors;*/
  bool? introScreenOnboardingDone;
  /*Null? relatedTopicsTourDone;
  Null? companyChallengeBreadcrumbTourDone;
  Null? contestRemindersBannerSelected;
  Null? hometown;
  Null? employmentTitle;
  Null? employmentYears;
  Null? collegeRollNo;
  Null? collegeSemester;
  Null? collegeCourse;
  Null? collegeCgpa;*/
  String? city;
  // Null? state;
  int? usernameChangeMax;
  // Null? hasViewedFeedPage;
  // Null? address;
  bool? hasVerifiedPhoneNumber;
  /*Null? countryOfResidence;
  Null? hasSeenChFullScreenIntro;
  Null? experienceStatus;
  Null? addressLine2;
  Null? addressCity;
  Null? addressState;
  Null? addressZip;
  Null? usWorkEligibility;
  Null? usWorkEligibility2;*/
  bool? isProfessional;
  /*Null? yearsOfExperience;
  Null? usCitizenship;
  Null? usCitizenship2;
  Null? gender;*/
  bool? isCampusRep;
  int? hackoAmount;
  String? timezone;
  /*Null? usWorkPrefs;
  Null? ethnicity;
  Null? jobsJoiningDate;
  Null? jobsPreferedRoles;
  Null? jobsTopSkills;
  Null? stateId;
  Null? jobsCompleteUsVisa;
  Null? jobsUsVisaOther;
  Null? ukWorkEligibility;
  Null? strykerConsent;
  Null? workExResetFlag;
  Null? jobBoardConsent;
  Null? isOrganizer;*/
  int? bookmarksCount;
  // Null? roleNumber;
  // Null? dashboardSurveyPreference;
  bool? hasSolvedAChallenge;
  /*Null? statusSolveMeFirst;
  Null? source;
  Null? trackNuxMixpanel;
  Null? registrationCustomData;
  Null? preferredLang;
  Null? badgesOnboardingStatus;
  Null? updatedModalProfiledData;
  Null? badgesOptInStatus;*/
  int? tosAcceptedOn;
  // Null? triedInterviewPrep;
  String? hackerPubsubChannel;
  // Null? triedMonacoEditor;
  String? gaUserId;
  String? gaClientId;
  String? gaUserIp;
  // Null? jobSeekingIntentSurvey;
  int? jobSurveyProfessionalDataRequired;
  bool? sourcingJobsConsent;
  // Null? workStartYear;
  bool? isHighSchoolStudent;
  // Null? darkModeBannerSeen;
  // Null? darkModeSeen;
  bool? isLinkedinConnected;
  // Null? jobAvailabilityType;
  // Null? jobAvailabilityYear;
  // Null? vcfProfileVisibility;
  String? signupIntent;
  String? onboardingStatus;
  // Null? workAuthorizationCountries;
  String? userPrefersTheme;
  bool? showDashboardV2;
  bool? showMockTests;
  bool? showCertificates;
  bool? showRecommendedPrepKit;
  bool? showPrepKits;
  bool? showDashboardBanner;
  bool? showCodecademyIntegration;
  bool? showDarkTheme;
  bool? showChallengeV2;
  bool? showPubsubSocketio;
  List? secondaryEmails;
  // Null? rank;
  // Null? language;

  Model(
      {this.id,
      this.username,
      this.country,
      // this.school,
      // this.languages,
      this.createdAt,
      this.level,
      this.email,
      /*this.fbUid,
      this.ghUid,
      this.liUid,*/
      this.isAdmin,
      this.supportAdmin,
      this.avatar,
      this.website,
      // this.shortBio,
      // this.usernameChangeCount,
      this.name,
      this.personalFirstName,
      this.personalLastName,
      this.company,
      // this.localLanguage,
      this.hasAvatarUrl,
      // this.hideAccountChecklist,
      // this.spamUser,
      this.jobTitle,
      // this.jobsHeadline,
      // this.linkedinUrl,
      // this.githubUrl,
      this.errors,
      this.confirmed,
      // this.facebookAllowOpengraph,
      // this.tsize,
      this.isMigrated,
      // this.facebookOpengraphAccessAvailable,
      // this.promisedLoginTime,
      // this.lastLogoutFeedback,
      this.chatEnabled,
      // this.tourDone,
      this.usernameAutoset,
      this.keyPrefix,
      this.notificationsUrl,
      /*this.resumeUrl,
      this.relocate,
      this.phone,
      this.phoneNumber,
      this.blogUrl,
      this.collegeMajor,
      this.collegeMajorId,
      this.jobsConsent,*/
      this.graduationYear,
      // this.graduationMonth,
      // this.collegeYear,
      // this.collegeMajors,
      this.introScreenOnboardingDone,
      /*this.relatedTopicsTourDone,
      this.companyChallengeBreadcrumbTourDone,
      this.contestRemindersBannerSelected,
      this.hometown,
      this.employmentTitle,
      this.employmentYears,
      this.collegeRollNo,
      this.collegeSemester,
      this.collegeCourse,
      this.collegeCgpa,*/
      this.city,
      // this.state,
      this.usernameChangeMax,
      // this.hasViewedFeedPage,
      // this.address,
      this.hasVerifiedPhoneNumber,
      /*this.countryOfResidence,
      this.hasSeenChFullScreenIntro,
      this.experienceStatus,
      this.addressLine2,
      this.addressCity,
      this.addressState,
      this.addressZip,
      this.usWorkEligibility,
      this.usWorkEligibility2,*/
      this.isProfessional,
      /*this.yearsOfExperience,
      this.usCitizenship,
      this.usCitizenship2,
      this.gender,*/
      this.isCampusRep,
      this.hackoAmount,
      this.timezone,
      /*this.usWorkPrefs,
      this.ethnicity,
      this.jobsJoiningDate,
      this.jobsPreferedRoles,
      this.jobsTopSkills,
      this.stateId,
      this.jobsCompleteUsVisa,
      this.jobsUsVisaOther,
      this.ukWorkEligibility,
      this.strykerConsent,
      this.workExResetFlag,
      this.jobBoardConsent,
      this.isOrganizer,*/
      this.bookmarksCount,
      // this.roleNumber,
      // this.dashboardSurveyPreference,
      this.hasSolvedAChallenge,
      /*this.statusSolveMeFirst,
      this.source,
      this.trackNuxMixpanel,
      this.registrationCustomData,
      this.preferredLang,
      this.badgesOnboardingStatus,
      this.updatedModalProfiledData,
      this.badgesOptInStatus,*/
      this.tosAcceptedOn,
      // this.triedInterviewPrep,
      this.hackerPubsubChannel,
      // this.triedMonacoEditor,
      this.gaUserId,
      this.gaClientId,
      this.gaUserIp,
      // this.jobSeekingIntentSurvey,
      this.jobSurveyProfessionalDataRequired,
      this.sourcingJobsConsent,
      // this.workStartYear,
      this.isHighSchoolStudent,
      // this.darkModeBannerSeen,
      // this.darkModeSeen,
      this.isLinkedinConnected,
      /*this.jobAvailabilityType,
      this.jobAvailabilityYear,
      this.vcfProfileVisibility,*/
      this.signupIntent,
      this.onboardingStatus,
      // this.workAuthorizationCountries,
      this.userPrefersTheme,
      this.showDashboardV2,
      this.showMockTests,
      this.showCertificates,
      this.showRecommendedPrepKit,
      this.showPrepKits,
      this.showDashboardBanner,
      this.showCodecademyIntegration,
      this.showDarkTheme,
      this.showChallengeV2,
      this.showPubsubSocketio,
      this.secondaryEmails,
      // this.rank,
      // this.language
      });

  Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    country = json['country'];
    /*school = json['school'];
    languages = json['languages'];*/
    createdAt = json['created_at'];
    level = json['level'];
    email = json['email'];
    /*fbUid = json['fb_uid'];
    ghUid = json['gh_uid'];
    liUid = json['li_uid'];*/
    isAdmin = json['is_admin'];
    supportAdmin = json['support_admin'];
    avatar = json['avatar'];
    website = json['website'];
    // shortBio = json['short_bio'];
    // usernameChangeCount = json['username_change_count'];
    name = json['name'];
    personalFirstName = json['personal_first_name'];
    personalLastName = json['personal_last_name'];
    company = json['company'];
    // localLanguage = json['local_language'];
    hasAvatarUrl = json['has_avatar_url'];
    // hideAccountChecklist = json['hide_account_checklist'];
    // spamUser = json['spam_user'];
    jobTitle = json['job_title'];
    /*jobsHeadline = json['jobs_headline'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];*/
    errors = json['errors'] != null ? Errors.fromJson(json['errors']) : null;
    confirmed = json['confirmed'];
    // facebookAllowOpengraph = json['facebook_allow_opengraph'];
    // tsize = json['tsize'];
    isMigrated = json['is_migrated'];
    // facebookOpengraphAccessAvailable =
        json['facebook_opengraph_access_available'];
    /*promisedLoginTime = json['promised_login_time'];
    lastLogoutFeedback = json['last_logout_feedback'];*/
    chatEnabled = json['chat_enabled'];
    // tourDone = json['tour_done'];
    usernameAutoset = json['username_autoset'];
    keyPrefix = json['key_prefix'];
    notificationsUrl = json['notifications_url'];
    /*resumeUrl = json['resume_url'];
    relocate = json['relocate'];
    phone = json['phone'];
    phoneNumber = json['phone_number'];
    blogUrl = json['blog_url'];
    collegeMajor = json['college_major'];
    collegeMajorId = json['college_major_id'];
    jobsConsent = json['jobs_consent'];*/
    graduationYear = json['graduation_year'];
    // graduationMonth = json['graduation_month'];
    // collegeYear = json['college_year'];
    // collegeMajors = json['college_majors'];
    introScreenOnboardingDone = json['intro_screen_onboarding_done'];
    // relatedTopicsTourDone = json['related_topics_tour_done'];
    // companyChallengeBreadcrumbTourDone = json['company_challenge_breadcrumb_tour_done'];
    // contestRemindersBannerSelected = json['contest_reminders_banner_selected'];
    /*hometown = json['hometown'];
    employmentTitle = json['employment_title'];
    employmentYears = json['employment_years'];
    collegeRollNo = json['college_roll_no'];
    collegeSemester = json['college_semester'];
    collegeCourse = json['college_course'];
    collegeCgpa = json['college_cgpa'];*/
    city = json['city'];
    // state = json['state'];
    usernameChangeMax = json['username_change_max'];
    // hasViewedFeedPage = json['has_viewed_feed_page'];
    // address = json['address'];
    hasVerifiedPhoneNumber = json['has_verified_phone_number'];
    /*countryOfResidence = json['country_of_residence'];
    hasSeenChFullScreenIntro = json['has_seen_ch_full_screen_intro'];
    experienceStatus = json['experience_status'];
    addressLine2 = json['address_line2'];
    addressCity = json['address_city'];
    addressState = json['address_state'];
    addressZip = json['address_zip'];
    usWorkEligibility = json['us_work_eligibility'];
    usWorkEligibility2 = json['us_work_eligibility_2'];*/
    isProfessional = json['is_professional'];
    /*yearsOfExperience = json['years_of_experience'];
    usCitizenship = json['us_citizenship'];
    usCitizenship2 = json['us_citizenship_2'];
    gender = json['gender'];*/
    isCampusRep = json['is_campus_rep'];
    hackoAmount = json['hacko_amount'];
    timezone = json['timezone'];
    /*usWorkPrefs = json['us_work_prefs'];
    ethnicity = json['ethnicity'];
    jobsJoiningDate = json['jobs_joining_date'];
    jobsPreferedRoles = json['jobs_prefered_roles'];
    jobsTopSkills = json['jobs_top_skills'];
    stateId = json['state_id'];
    jobsCompleteUsVisa = json['jobs_complete_us_visa'];
    jobsUsVisaOther = json['jobs_us_visa_other'];
    ukWorkEligibility = json['uk_work_eligibility'];
    strykerConsent = json['stryker_consent'];
    workExResetFlag = json['work_ex_reset_flag'];
    jobBoardConsent = json['job_board_consent'];
    isOrganizer = json['is_organizer'];*/
    bookmarksCount = json['bookmarks_count'];
    // roleNumber = json['role_number'];
    // dashboardSurveyPreference = json['dashboard_survey_preference'];
    hasSolvedAChallenge = json['has_solved_a_challenge'];
    /*statusSolveMeFirst = json['status_solve_me_first'];
    source = json['source'];
    trackNuxMixpanel = json['track_nux_mixpanel'];
    registrationCustomData = json['registration_custom_data'];
    preferredLang = json['preferred_lang'];*/
    // badgesOnboardingStatus = json['badges_onboarding_status'];
    // updatedModalProfiledData = json['updated_modal_profiled_data'];
    // badgesOptInStatus = json['badges_opt_in_status'];
    tosAcceptedOn = json['tos_accepted_on'];
    // triedInterviewPrep = json['tried_interview_prep'];
    hackerPubsubChannel = json['hacker_pubsub_channel'];
    // triedMonacoEditor = json['tried_monaco_editor'];
    gaUserId = json['ga_user_id'];
    gaClientId = json['ga_client_id'];
    gaUserIp = json['ga_user_ip'];
    // jobSeekingIntentSurvey = json['job_seeking_intent_survey'];
    jobSurveyProfessionalDataRequired =
        json['job_survey_professional_data_required'];
    sourcingJobsConsent = json['sourcing_jobs_consent'];
    // workStartYear = json['work_start_year'];
    isHighSchoolStudent = json['is_high_school_student'];
    // darkModeBannerSeen = json['dark_mode_banner_seen'];
    // darkModeSeen = json['dark_mode_seen'];
    isLinkedinConnected = json['is_linkedin_connected'];
    /*jobAvailabilityType = json['job_availability_type'];
    jobAvailabilityYear = json['job_availability_year'];
    vcfProfileVisibility = json['vcf_profile_visibility'];*/
    signupIntent = json['signup_intent'];
    onboardingStatus = json['onboarding_status'];
    // workAuthorizationCountries = json['work_authorization_countries'];
    userPrefersTheme = json['user_prefers_theme'];
    showDashboardV2 = json['show_dashboard_v2'];
    showMockTests = json['show_mock_tests'];
    showCertificates = json['show_certificates'];
    showRecommendedPrepKit = json['show_recommended_prep_kit'];
    showPrepKits = json['show_prep_kits'];
    showDashboardBanner = json['show_dashboard_banner'];
    showCodecademyIntegration = json['show_codecademy_integration'];
    showDarkTheme = json['show_dark_theme'];
    showChallengeV2 = json['show_challenge_v2'];
    showPubsubSocketio = json['show_pubsub_socketio'];
    if (json['secondary_emails'] != null) {
      secondaryEmails = [];
      json['secondary_emails'].forEach((v) {
        secondaryEmails?.add(v);
      });
    }
    // rank = json['rank'];
    // language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.username != null) {
      data['username'] = this.username;
    }
    if (this.country != null) {
      data['country'] = this.country;
    }
    /*if (this.school != null) {
      data['school'] = this.school;
    }
    if (this.languages != null) {
      data['languages'] = this.languages;
    }*/
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.level != null) {
      data['level'] = this.level;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    /*if (this.fbUid != null) {
      data['fb_uid'] = this.fbUid;
    }
    if (this.ghUid != null) {
      data['gh_uid'] = this.ghUid;
    }
    if (this.liUid != null) {
      data['li_uid'] = this.liUid;
    }*/
    if (this.isAdmin != null) {
      data['is_admin'] = this.isAdmin;
    }
    if (this.supportAdmin != null) {
      data['support_admin'] = this.supportAdmin;
    }
    if (this.avatar != null) {
      data['avatar'] = this.avatar;
    }
    if (this.website != null) {
      data['website'] = this.website;
    }
    /*if (this.shortBio != null) {
      data['short_bio'] = this.shortBio;
    }*/
    /*if (this.usernameChangeCount != null) {
      data['username_change_count'] = this.usernameChangeCount;
    }*/
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.personalFirstName != null) {
      data['personal_first_name'] = this.personalFirstName;
    }
    if (this.personalLastName != null) {
      data['personal_last_name'] = this.personalLastName;
    }
    if (this.company != null) {
      data['company'] = this.company;
    }
    /*if (this.localLanguage != null) {
      data['local_language'] = this.localLanguage;
    }*/
    if (this.hasAvatarUrl != null) {
      data['has_avatar_url'] = this.hasAvatarUrl;
    }
    /*if (this.hideAccountChecklist != null) {
      data['hide_account_checklist'] = this.hideAccountChecklist;
    }
    if (this.spamUser != null) {
      data['spam_user'] = this.spamUser;
    }*/
    if (this.jobTitle != null) {
      data['job_title'] = this.jobTitle;
    }
    /*if (this.jobsHeadline != null) {
      data['jobs_headline'] = this.jobsHeadline;
    }
    if (this.linkedinUrl != null) {
      data['linkedin_url'] = this.linkedinUrl;
    }
    if (this.githubUrl != null) {
      data['github_url'] = this.githubUrl;
    }*/
    if (this.errors != null) {
      data['errors'] = this.errors?.toJson();
    }
    if (this.confirmed != null) {
      data['confirmed'] = this.confirmed;
    }
    /*if (this.facebookAllowOpengraph != null) {
      data['facebook_allow_opengraph'] = this.facebookAllowOpengraph;
    }
    if (this.tsize != null) {
      data['tsize'] = this.tsize;
    }*/
    if (this.isMigrated != null) {
      data['is_migrated'] = this.isMigrated;
    }
    /*if (this.facebookOpengraphAccessAvailable != null) {
      data['facebook_opengraph_access_available'] =
          this.facebookOpengraphAccessAvailable;
    }
    if (this.promisedLoginTime != null) {
      data['promised_login_time'] = this.promisedLoginTime;
    }
    if (this.lastLogoutFeedback != null) {
      data['last_logout_feedback'] = this.lastLogoutFeedback;
    }*/
    if (this.chatEnabled != null) {
      data['chat_enabled'] = this.chatEnabled;
    }
    /*if (this.tourDone != null) {
      data['tour_done'] = this.tourDone;
    }*/
    if (this.usernameAutoset != null) {
      data['username_autoset'] = this.usernameAutoset;
    }
    if (this.keyPrefix != null) {
      data['key_prefix'] = this.keyPrefix;
    }
    if (this.notificationsUrl != null) {
      data['notifications_url'] = this.notificationsUrl;
    }
    /*if (this.resumeUrl != null) {
      data['resume_url'] = this.resumeUrl;
    }
    if (this.relocate != null) {
      data['relocate'] = this.relocate;
    }
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    if (this.phoneNumber != null) {
      data['phone_number'] = this.phoneNumber;
    }
    if (this.blogUrl != null) {
      data['blog_url'] = this.blogUrl;
    }
    if (this.collegeMajor != null) {
      data['college_major'] = this.collegeMajor;
    }
    if (this.collegeMajorId != null) {
      data['college_major_id'] = this.collegeMajorId;
    }
    if (this.jobsConsent != null) {
      data['jobs_consent'] = this.jobsConsent;
    }*/
    if (this.graduationYear != null) {
      data['graduation_year'] = this.graduationYear;
    }
    /*if (this.graduationMonth != null) {
      data['graduation_month'] = this.graduationMonth;
    }
    if (this.collegeYear != null) {
      data['college_year'] = this.collegeYear;
    }
    if (this.collegeMajors != null) {
      data['college_majors'] = this.collegeMajors;
    }*/
    if (this.introScreenOnboardingDone != null) {
      data['intro_screen_onboarding_done'] = this.introScreenOnboardingDone;
    }
    /*if (this.relatedTopicsTourDone != null) {
      data['related_topics_tour_done'] = this.relatedTopicsTourDone;
    }
    if (this.companyChallengeBreadcrumbTourDone != null) {
      data['company_challenge_breadcrumb_tour_done'] =
          this.companyChallengeBreadcrumbTourDone;
    }
    if (this.contestRemindersBannerSelected != null) {
      data['contest_reminders_banner_selected'] =
          this.contestRemindersBannerSelected;
    }
    if (this.hometown != null) {
      data['hometown'] = this.hometown;
    }
    if (this.employmentTitle != null) {
      data['employment_title'] = this.employmentTitle;
    }
    if (this.employmentYears != null) {
      data['employment_years'] = this.employmentYears;
    }
    if (this.collegeRollNo != null) {
      data['college_roll_no'] = this.collegeRollNo;
    }
    if (this.collegeSemester != null) {
      data['college_semester'] = this.collegeSemester;
    }
    if (this.collegeCourse != null) {
      data['college_course'] = this.collegeCourse;
    }
    if (this.collegeCgpa != null) {
      data['college_cgpa'] = this.collegeCgpa;
    }*/
    if (this.city != null) {
      data['city'] = this.city;
    }
    /*if (this.state != null) {
      data['state'] = this.state;
    }*/
    if (this.usernameChangeMax != null) {
      data['username_change_max'] = this.usernameChangeMax;
    }
    /*if (this.hasViewedFeedPage != null) {
      data['has_viewed_feed_page'] = this.hasViewedFeedPage;
    }
    if (this.address != null) {
      data['address'] = this.address;
    }*/
    if (this.hasVerifiedPhoneNumber != null) {
      data['has_verified_phone_number'] = this.hasVerifiedPhoneNumber;
    }
    /*if (this.countryOfResidence != null) {
      data['country_of_residence'] = this.countryOfResidence;
    }
    if (this.hasSeenChFullScreenIntro != null) {
      data['has_seen_ch_full_screen_intro'] = this.hasSeenChFullScreenIntro;
    }
    if (this.experienceStatus != null) {
      data['experience_status'] = this.experienceStatus;
    }
    if (this.addressLine2 != null) {
      data['address_line2'] = this.addressLine2;
    }
    if (this.addressCity != null) {
      data['address_city'] = this.addressCity;
    }
    if (this.addressState != null) {
      data['address_state'] = this.addressState;
    }
    if (this.addressZip != null) {
      data['address_zip'] = this.addressZip;
    }
    if (this.usWorkEligibility != null) {
      data['us_work_eligibility'] = this.usWorkEligibility;
    }
    if (this.usWorkEligibility2 != null) {
      data['us_work_eligibility_2'] = this.usWorkEligibility2;
    }*/
    if (this.isProfessional != null) {
      data['is_professional'] = this.isProfessional;
    }
    /*if (this.yearsOfExperience != null) {
      data['years_of_experience'] = this.yearsOfExperience;
    }
    if (this.usCitizenship != null) {
      data['us_citizenship'] = this.usCitizenship;
    }
    if (this.usCitizenship2 != null) {
      data['us_citizenship_2'] = this.usCitizenship2;
    }
    if (this.gender != null) {
      data['gender'] = this.gender;
    }*/
    if (this.isCampusRep != null) {
      data['is_campus_rep'] = this.isCampusRep;
    }
    if (this.hackoAmount != null) {
      data['hacko_amount'] = this.hackoAmount;
    }
    if (this.timezone != null) {
      data['timezone'] = this.timezone;
    }
    /*if (this.usWorkPrefs != null) {
      data['us_work_prefs'] = this.usWorkPrefs;
    }
    if (this.ethnicity != null) {
      data['ethnicity'] = this.ethnicity;
    }
    if (this.jobsJoiningDate != null) {
      data['jobs_joining_date'] = this.jobsJoiningDate;
    }
    if (this.jobsPreferedRoles != null) {
      data['jobs_prefered_roles'] = this.jobsPreferedRoles;
    }
    if (this.jobsTopSkills != null) {
      data['jobs_top_skills'] = this.jobsTopSkills;
    }
    if (this.stateId != null) {
      data['state_id'] = this.stateId;
    }
    if (this.jobsCompleteUsVisa != null) {
      data['jobs_complete_us_visa'] = this.jobsCompleteUsVisa;
    }
    if (this.jobsUsVisaOther != null) {
      data['jobs_us_visa_other'] = this.jobsUsVisaOther;
    }
    if (this.ukWorkEligibility != null) {
      data['uk_work_eligibility'] = this.ukWorkEligibility;
    }
    if (this.strykerConsent != null) {
      data['stryker_consent'] = this.strykerConsent;
    }
    if (this.workExResetFlag != null) {
      data['work_ex_reset_flag'] = this.workExResetFlag;
    }
    if (this.jobBoardConsent != null) {
      data['job_board_consent'] = this.jobBoardConsent;
    }
    if (this.isOrganizer != null) {
      data['is_organizer'] = this.isOrganizer;
    }*/
    if (this.bookmarksCount != null) {
      data['bookmarks_count'] = this.bookmarksCount;
    }
    /*if (this.roleNumber != null) {
      data['role_number'] = this.roleNumber;
    }
    if (this.dashboardSurveyPreference != null) {
      data['dashboard_survey_preference'] = this.dashboardSurveyPreference;
    }*/
    if (this.hasSolvedAChallenge != null) {
      data['has_solved_a_challenge'] = this.hasSolvedAChallenge;
    }
    /*if (this.statusSolveMeFirst != null) {
      data['status_solve_me_first'] = this.statusSolveMeFirst;
    }
    if (this.source != null) {
      data['source'] = this.source;
    }
    if (this.trackNuxMixpanel != null) {
      data['track_nux_mixpanel'] = this.trackNuxMixpanel;
    }
    if (this.registrationCustomData != null) {
      data['registration_custom_data'] = this.registrationCustomData;
    }
    if (this.preferredLang != null) {
      data['preferred_lang'] = this.preferredLang;
    }*/
   /* if (this.badgesOnboardingStatus != null) {
      data['badges_onboarding_status'] = this.badgesOnboardingStatus;
    }*/
    /*if (this.updatedModalProfiledData != null) {
      data['updated_modal_profiled_data'] = this.updatedModalProfiledData;
    }
    if (this.badgesOptInStatus != null) {
      data['badges_opt_in_status'] = this.badgesOptInStatus;
    }*/
    if (this.tosAcceptedOn != null) {
      data['tos_accepted_on'] = this.tosAcceptedOn;
    }
    /*if (this.triedInterviewPrep != null) {
      data['tried_interview_prep'] = this.triedInterviewPrep;
    }*/
    if (this.hackerPubsubChannel != null) {
      data['hacker_pubsub_channel'] = this.hackerPubsubChannel;
    }
    /*if (this.triedMonacoEditor != null) {
      data['tried_monaco_editor'] = this.triedMonacoEditor;
    }*/
    if (this.gaUserId != null) {
      data['ga_user_id'] = this.gaUserId;
    }
    if (this.gaClientId != null) {
      data['ga_client_id'] = this.gaClientId;
    }
    if (this.gaUserIp != null) {
      data['ga_user_ip'] = this.gaUserIp;
    }
    /*if (this.jobSeekingIntentSurvey != null) {
      data['job_seeking_intent_survey'] = this.jobSeekingIntentSurvey;
    }*/
    if (this.jobSurveyProfessionalDataRequired != null) {
      data['job_survey_professional_data_required'] =
          this.jobSurveyProfessionalDataRequired;
    }
    if (this.sourcingJobsConsent != null) {
      data['sourcing_jobs_consent'] = this.sourcingJobsConsent;
    }
    /*if (this.workStartYear != null) {
      data['work_start_year'] = this.workStartYear;
    }*/
    if (this.isHighSchoolStudent != null) {
      data['is_high_school_student'] = this.isHighSchoolStudent;
    }
    /*if (this.darkModeBannerSeen != null) {
      data['dark_mode_banner_seen'] = this.darkModeBannerSeen;
    }
    if (this.darkModeSeen != null) {
      data['dark_mode_seen'] = this.darkModeSeen;
    }*/
    if (this.isLinkedinConnected != null) {
      data['is_linkedin_connected'] = this.isLinkedinConnected;
    }
    /*if (this.jobAvailabilityType != null) {
      data['job_availability_type'] = this.jobAvailabilityType;
    }
    if (this.jobAvailabilityYear != null) {
      data['job_availability_year'] = this.jobAvailabilityYear;
    }
    if (this.vcfProfileVisibility != null) {
      data['vcf_profile_visibility'] = this.vcfProfileVisibility;
    }*/
    if (this.signupIntent != null) {
      data['signup_intent'] = this.signupIntent;
    }
    if (this.onboardingStatus != null) {
      data['onboarding_status'] = this.onboardingStatus;
    }
    /*if (this.workAuthorizationCountries != null) {
      data['work_authorization_countries'] = this.workAuthorizationCountries;
    }*/
    if (this.userPrefersTheme != null) {
      data['user_prefers_theme'] = this.userPrefersTheme;
    }
    if (this.showDashboardV2 != null) {
      data['show_dashboard_v2'] = this.showDashboardV2;
    }
    if (this.showMockTests != null) {
      data['show_mock_tests'] = this.showMockTests;
    }
    if (this.showCertificates != null) {
      data['show_certificates'] = this.showCertificates;
    }
    if (this.showRecommendedPrepKit != null) {
      data['show_recommended_prep_kit'] = this.showRecommendedPrepKit;
    }
    if (this.showPrepKits != null) {
      data['show_prep_kits'] = this.showPrepKits;
    }
    if (this.showDashboardBanner != null) {
      data['show_dashboard_banner'] = this.showDashboardBanner;
    }
    if (this.showCodecademyIntegration != null) {
      data['show_codecademy_integration'] = this.showCodecademyIntegration;
    }
    if (this.showDarkTheme != null) {
      data['show_dark_theme'] = this.showDarkTheme;
    }
    if (this.showChallengeV2 != null) {
      data['show_challenge_v2'] = this.showChallengeV2;
    }
    if (this.showPubsubSocketio != null) {
      data['show_pubsub_socketio'] = this.showPubsubSocketio;
    }
    if (this.secondaryEmails != null) {
      data['secondary_emails'] = this.secondaryEmails?.map((v) => v).toList();
    }
    /*if (this.rank != null) {
      data['rank'] = this.rank;
    }
    if (this.language != null) {
      data['language'] = this.language;
    }*/
    return data;
  }
}

class Errors {
  Errors();

  Errors.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}
