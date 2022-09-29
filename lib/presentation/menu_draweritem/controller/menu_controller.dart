import '/core/app_export.dart';
import 'package:hackerrank/presentation/menu_draweritem/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/data/models/logout/delete_logout_resp.dart';
import 'package:hackerrank/data/apiClient/api_client.dart';

class MenuController extends GetxController {
  Rx<MenuModel> menuModelObj = MenuModel().obs;

  DeleteLogoutResp deleteLogoutResp = DeleteLogoutResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callDeleteLogout(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().deleteLogout(
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
          'X-CSRF-Token': Get.find<PrefUtils>().getCsrf(),
          'sec-ch-ua':
              '".Not/A)Brand";v="99", "Google Chrome";v="103", "Chromium";v="103"',
          'sec-ch-ua-mobile': '?0',
          'sec-ch-ua-platform': '"Linux"',
        },
        onSuccess: (resp) {
          onDeleteLogoutSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onDeleteLogoutError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onDeleteLogoutSuccess(var response) {
    deleteLogoutResp = DeleteLogoutResp.fromJson(response);
    if (deleteLogoutResp.status == true) {
      Get.find<PrefUtils>().setCsrf("");
      Get.find<PrefUtils>().setCookie("");
      Get.offNamed(AppRoutes.loginScreen);
    }
  }

  void onDeleteLogoutError(var err) {
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
