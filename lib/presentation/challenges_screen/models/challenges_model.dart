import 'package:get/get.dart';
import 'challenges_item_model.dart';

class ChallengesModel {
  RxList<ChallengesItemModel> challengesItemList =
      RxList.filled(0, ChallengesItemModel());
}
