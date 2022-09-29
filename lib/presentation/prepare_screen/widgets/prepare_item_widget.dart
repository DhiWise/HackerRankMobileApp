import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../controller/prepare_controller.dart';
import '../models/prepare_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/widgets/custom_button.dart';

// ignore: must_be_immutable
class PrepareItemWidget extends StatelessWidget {
  PrepareItemWidget(this.prepareItemModelObj);

  PrepareItemModel prepareItemModelObj;

  var controller = Get.find<PrepareController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapRowcomputer(prepareItemModelObj.algorithmsTxt.value,
              prepareItemModelObj.slug.value);
        },
        child: Container(
            margin: getMargin(
              top: 4.0,
              bottom: 4.0,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Row(children: [
              Padding(
                  padding: getPadding(left: 25, top: 6, bottom: 6),
                  child: Obx(() => Text(prepareItemModelObj.algorithmsTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSansRomanBold16
                          .copyWith(height: 1.00))))
            ])));
  }

  onTapRowcomputer(String name, String slug) {
    Get.toNamed(AppRoutes.challengesScreen,
        arguments: {NavigationArgs.name: name, NavigationArgs.slug: slug});
  }
}
