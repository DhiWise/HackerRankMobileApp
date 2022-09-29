import 'package:hackerrank/presentation/challenges_screen/models/challenges_item_model.dart';

import '/core/app_export.dart';
import 'package:hackerrank/presentation/challenges_screen/models/challenges_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/data/models/arraysDs/put_arrays_ds_resp.dart';
import 'package:hackerrank/data/apiClient/api_client.dart';
import 'package:hackerrank/data/models/algorithmsChallenges/get_algorithms_challenges_resp.dart';
import 'package:hackerrank/core/constants/defaultCount.dart';

class ChallengesController extends GetxController {
  var slug = Get.arguments[NavigationArgs.slug].toString();
  var name = Get.arguments[NavigationArgs.name].toString();

  Rx<ChallengesModel> challengesModelObj = ChallengesModel().obs;

  PutArraysDsResp putArraysDsResp = PutArraysDsResp();

  GetAlgorithmsChallengesResp getAlgorithmsChallengesResp =
      GetAlgorithmsChallengesResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {"slug": slug};
    this.callFetchAlgorithmsChallenges(
      successCall: _onFetchAlgorithmsChallengesSuccess,
      errCall: _onFetchAlgorithmsChallengesError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callUpdateArraysDs(String slug, Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().updateArraysDs(slug, headers: {
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
      'X-CSRF-Token': Get.find<PrefUtils>().getCsrfWithCookie(),
    }, onSuccess: (resp) {
      onUpdateArraysDsSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onUpdateArraysDsError(err);
      if (errCall != null) {
        errCall();
      }
    }, requestData: req);
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

  void callFetchAlgorithmsChallenges(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchAlgorithmsChallenges(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'If-None-Match': 'W/"c93351fdc65df2878eac094f0c71859c"',
          'Referer': 'https://www.hackerrank.com/domains/algorithms',
          'Sec-Fetch-Dest': 'empty',
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
        },
        onSuccess: (resp) {
          onFetchAlgorithmsChallengesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchAlgorithmsChallengesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchAlgorithmsChallengesSuccess(var response) {
    getAlgorithmsChallengesResp =
        GetAlgorithmsChallengesResp.fromJson(response);
    for (var element in getAlgorithmsChallengesResp.models!) {
      ChallengesItemModel challengesItemModel = new ChallengesItemModel();
      challengesItemModel.nameTxt.value = element.name.toString();
      challengesItemModel.descriptionTxt.value = element.preview.toString();
      challengesItemModel.slug.value = element.slug.toString();
      challengesItemModel.difficulty.value = element.difficultyName.toString();
      challengesModelObj.value.challengesItemList.add(challengesItemModel);
    }
  }

  void onFetchAlgorithmsChallengesError(var err) {
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

  void _onFetchAlgorithmsChallengesSuccess() {
    Get.find<PrefUtils>()
        .setSkillSlug(getAlgorithmsChallengesResp.models!.toString());
  }

  void _onFetchAlgorithmsChallengesError() {}
}
