import '/core/app_export.dart';
import 'package:hackerrank/presentation/bookmark_screen/models/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/data/models/arraysDs/put_arrays_ds_resp.dart';
import 'package:hackerrank/data/apiClient/api_client.dart';
import 'package:hackerrank/data/models/challenges/get_challenges_resp.dart';
import 'package:hackerrank/core/constants/defaultCount.dart';

class BookmarkController extends GetxController {
  Rx<BookmarkModel> bookmarkModelObj = BookmarkModel().obs;

  PutArraysDsResp putArraysDsResp = PutArraysDsResp();

  GetChallengesResp getChallengesResp = GetChallengesResp();

  @override
  void onReady() {
    super.onReady();
    if (Get.find<PrefUtils>().getCookie() == "") {
      Get.defaultDialog(
        title: "Cookie Not Found!",
        middleText: "",
      );
    }
    Map<String, dynamic> queryParams = {
      'offset': DefaultCount.offset,
      'limit': DefaultCount.limit,
      'track_login': DefaultCount.trackLogin,
    };
    this.callFetchChallenges(
      successCall: _onFetchChallengesSuccess,
      errCall: _onFetchChallengesError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callUpdateArraysDs(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().updateArraysDs(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'Origin': 'https://www.hackerrank.com',
          'Referer': 'https://www.hackerrank.com/domains/data-structures',
          'Sec-Fetch-Dest': 'empty',
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
          'X-CSRF-Token': Get.find<PrefUtils>().getCsrf(),
          'Cookie': Get.find<PrefUtils>().getCookie()
        },
        onSuccess: (resp) {
          onUpdateArraysDsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onUpdateArraysDsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onUpdateArraysDsSuccess(var response) {
    putArraysDsResp = PutArraysDsResp.fromJson(response);
  }

  void onUpdateArraysDsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }

  void callFetchChallenges(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchChallenges(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'If-None-Match': 'W/"3ce907dad9bf9f18936b909d755cb9cd"',
          'Referer': 'https://www.hackerrank.com/challenges/bookmarks',
          'Sec-Fetch-Dest': 'empty',
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
          'X-CSRF-Token': Get.find<PrefUtils>().getCsrf(),
          'Cookie': Get.find<PrefUtils>().getCookie()
        },
        onSuccess: (resp) {
          onFetchChallengesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchChallengesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchChallengesSuccess(var response) {
    getChallengesResp = GetChallengesResp.fromJson(response);
  }

  void onFetchChallengesError(var err) {
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

  void _onFetchChallengesSuccess() {}
  void _onFetchChallengesError() {}
}
