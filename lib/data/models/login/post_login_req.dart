class PostLoginReq {
  String? login;
  String? password;
  bool? rememberMe;
  bool? fallback;

  PostLoginReq({this.login, this.password, this.rememberMe, this.fallback});

  PostLoginReq.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    password = json['password'];
    rememberMe = json['remember_me'];
    fallback = json['fallback'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.login != null) {
      data['login'] = this.login;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    if (this.rememberMe != null) {
      data['remember_me'] = this.rememberMe;
    }
    if (this.fallback != null) {
      data['fallback'] = this.fallback;
    }
    return data;
  }
}
