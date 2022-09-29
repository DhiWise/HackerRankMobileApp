import '../models/prepare_model.dart';
import '/core/app_export.dart';
import 'package:hackerrank/presentation/prepare_screen/models/prepare_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/data/models/scoresElo/get_scores_elo_resp.dart';
import 'package:hackerrank/data/apiClient/api_client.dart';

class PrepareController extends GetxController {
  Rx<PrepareModel> prepareModelObj = PrepareModel().obs;

  List<GetScoresEloResp> getScoresEloResp = <GetScoresEloResp>[];

  @override
  void onReady() {
    super.onReady();
    this.callFetchScoresElo(
      successCall: _onFetchScoresEloSuccess,
      errCall: _onFetchScoresEloError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchScoresElo(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchScoresElo(
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
          'If-None-Match': 'W/"54acc079abad04e5d30fa85e2c51dc9a"',
          'Referer': 'https://www.hackerrank.com',
          'Sec-Fetch-Dest': 'empty',
          'Sec-Fetch-Mode': 'cors',
          'Sec-Fetch-Site': 'same-origin',
          'User-Agent':
              'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
          'X-CSRF-Token': Get.find<PrefUtils>().getCsrf(),
        },
        onSuccess: (resp) {
          onFetchScoresEloSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchScoresEloError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchScoresEloSuccess(var response) {
    getScoresEloResp =
        (response as List).map((e) => GetScoresEloResp.fromJson(e)).toList();
    for (var element in getScoresEloResp) {
      PrepareItemModel prepareItemModel = new PrepareItemModel();
      prepareItemModel.algorithmsTxt.value = element.name.toString();
      prepareItemModel.slug.value = element.slug.toString();
      prepareModelObj.value.prepareItemList.add(prepareItemModel);
    }
  }

  void onFetchScoresEloError(var err) {
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

  void _onFetchScoresEloSuccess() {}

  void _onFetchScoresEloError() {}
}
