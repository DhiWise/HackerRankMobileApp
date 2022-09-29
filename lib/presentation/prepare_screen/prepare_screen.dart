import '../menu_draweritem/controller/menu_controller.dart';
import '../menu_draweritem/menu_draweritem.dart';
import 'controller/prepare_controller.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/widgets/custom_icon_button.dart';

import 'models/prepare_item_model.dart';
import 'widgets/prepare_item_widget.dart';

// ignore_for_file: must_be_immutable
class PrepareScreen extends GetWidget<PrepareController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.gray100,
            drawer: MenuDraweritem(MenuController()),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillBluegray800,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            margin: getMargin(
                                                left: 20,
                                                top: 18,
                                                right: 20,
                                                bottom: 18),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgMenu();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 10,
                                                              bottom: 10,
                                                              right: 10,
                                                              left: 10),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          1.00)),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMenu,
                                                                  height:
                                                                      getVerticalSize(
                                                                          12.00),
                                                                  width: getHorizontalSize(
                                                                      16.00))))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          185.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgHackerranklogo,
                                                                    height:
                                                                        getVerticalSize(
                                                                            20.00),
                                                                    width: getHorizontalSize(
                                                                        185.00))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgHackerranklogo20X14,
                                                                        height: getVerticalSize(
                                                                            20.00),
                                                                        width: getHorizontalSize(
                                                                            14.00))))
                                                          ]))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Text("msg_prepare_by_topi".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansRomanBold18
                                      .copyWith(height: 1.00)))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(
                              left: 16, top: 19, right: 16, bottom: 66),
                          decoration: AppDecoration.outlineGray70011,
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller
                                  .prepareModelObj.value.prepareItemList.length,
                              itemBuilder: (context, index) {
                                PrepareItemModel model = controller
                                    .prepareModelObj
                                    .value
                                    .prepareItemList[index];
                                return PrepareItemWidget(model);
                              })))
                    ]))))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
