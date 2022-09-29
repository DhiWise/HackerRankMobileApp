import '/core/app_export.dart';
import 'package:hackerrank/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/data/models/login/post_login_resp.dart';
import 'package:hackerrank/data/apiClient/api_client.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
    if (Get.find<PrefUtils>().getCsrf() != "") {
      Get.offNamed(AppRoutes.prepareScreen);
    }
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    emailOneController.dispose();
  }

  void callCreateLogin(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createLogin(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'Origin': 'https://www.hackerrank.com',
          'Referer': 'https://www.hackerrank.com/dashboard',
          'Sec-Fetch-Dest': 'empty',
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36',
          'sec-ch-ua':
              '".Not/A)Brand";v="99", "Google Chrome";v="103", "Chromium";v="103"',
          'sec-ch-ua-mobile': '?0',
          'sec-ch-ua-platform': '"Linux"',
        },
        onSuccess: (resp) {
          onCreateLoginSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateLoginError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateLoginSuccess(var response) {
    postLoginResp = PostLoginResp.fromJson(response);
  }

  void onCreateLoginError(var err) {
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
}
