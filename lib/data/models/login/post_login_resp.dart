class PostLoginResp {
  bool? status;
  List<String>? messages;
  List? errors;
  bool? accountCreated;
  bool? contestSignup;
  bool? hrxUser;
  bool? hackerExists;
  bool? contestStarted;
  bool? additionalDetails;
  bool? domainRestriction;
  bool? hasCodesprintRegPage;
  bool? askJobsProfile;
  String? contestSlug;
  String? csrfToken;

  PostLoginResp(
      {this.status,
      this.messages,
      this.errors,
      this.accountCreated,
      this.contestSignup,
      this.hrxUser,
      this.hackerExists,
      this.contestStarted,
      this.additionalDetails,
      this.domainRestriction,
      this.hasCodesprintRegPage,
      this.askJobsProfile,
      this.contestSlug,
      this.csrfToken});

  PostLoginResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    messages = json['messages'].cast<String>();
    if (json['errors'] != null) {
      errors = [];
      json['errors'].forEach((v) {
        errors?.add(v);
      });
    }
    accountCreated = json['account_created'];
    contestSignup = json['contest_signup'];
    hrxUser = json['hrx_user'];
    hackerExists = json['hacker_exists'];
    contestStarted = json['contest_started'];
    additionalDetails = json['additional_details'];
    domainRestriction = json['domain_restriction'];
    hasCodesprintRegPage = json['has_codesprint_reg_page'];
    askJobsProfile = json['ask_jobs_profile'];
    contestSlug = json['contest_slug'];
    csrfToken = json['csrf_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.messages != null) {
      data['messages'] = this.messages;
    }
    if (this.errors != null) {
      data['errors'] = this.errors?.map((v) => v).toList();
    }
    if (this.accountCreated != null) {
      data['account_created'] = this.accountCreated;
    }
    if (this.contestSignup != null) {
      data['contest_signup'] = this.contestSignup;
    }
    if (this.hrxUser != null) {
      data['hrx_user'] = this.hrxUser;
    }
    if (this.hackerExists != null) {
      data['hacker_exists'] = this.hackerExists;
    }
    if (this.contestStarted != null) {
      data['contest_started'] = this.contestStarted;
    }
    if (this.additionalDetails != null) {
      data['additional_details'] = this.additionalDetails;
    }
    if (this.domainRestriction != null) {
      data['domain_restriction'] = this.domainRestriction;
    }
    if (this.hasCodesprintRegPage != null) {
      data['has_codesprint_reg_page'] = this.hasCodesprintRegPage;
    }
    if (this.askJobsProfile != null) {
      data['ask_jobs_profile'] = this.askJobsProfile;
    }
    if (this.contestSlug != null) {
      data['contest_slug'] = this.contestSlug;
    }
    if (this.csrfToken != null) {
      data['csrf_token'] = this.csrfToken;
    }
    return data;
  }
}
