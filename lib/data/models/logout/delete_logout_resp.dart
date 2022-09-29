class DeleteLogoutResp {
  bool? status;

  DeleteLogoutResp({this.status});

  DeleteLogoutResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    return data;
  }
}
