import '/core/app_export.dart';
import 'package:hackerrank/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/data/models/me/get_me_resp.dart';
import 'package:hackerrank/data/apiClient/api_client.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  GetMeResp getMeResp = GetMeResp();

  @override
  void onReady() {
    super.onReady();
    if (Get.find<PrefUtils>().getCookie() == "") {
      Get.defaultDialog(
        title: "Cookie Not Found!",
        middleText: "",
      );
    }
    this.callFetchMe(
      successCall: _onFetchMeSuccess,
      errCall: _onFetchMeError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchMe({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchMe(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'Origin': 'https://www.hackerrank.com',
          'Referer': 'https://www.hackerrank.com/ashutosh_dave',
          'Sec-Fetch-Dest': 'empty',
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
          'X-CSRF-Token': Get.find<PrefUtils>().getCsrf(),
          'Cookie': Get.find<PrefUtils>().getCookie()
        },
        onSuccess: (resp) {
          onFetchMeSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchMeError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchMeSuccess(var response) {
    getMeResp = GetMeResp.fromJson(response);
  }

  void onFetchMeError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchMeSuccess() {
    profileModelObj.value.emailTxt.value = getMeResp.model!.email!.toString();
    profileModelObj.value.profileImg.value =
        getMeResp.model!.avatar!.toString();
    profileModelObj.value.cameronWilliamTxt.value =
        getMeResp.model!.name!.toString();
    profileModelObj.value.oneTxt.value = getMeResp.model!.company!.toString();
    profileModelObj.value.zipcodeTxt.value =
        getMeResp.model!.graduationYear!.toString();
    profileModelObj.value.countryTxt.value = getMeResp.model!.city!.toString();
  }

  void _onFetchMeError() {}
}
