import '../menu_draweritem/controller/menu_controller.dart';
import '../menu_draweritem/menu_draweritem.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
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
                                                              left: 10,
                                                              right: 10),
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
                              child: Obx(() => CommonImageView(
                                  url: controller
                                      .profileModelObj.value.profileImg.value,
                                  height: getSize(100.00),
                                  width: getSize(100.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 20, right: 16),
                              child: Obx(() => Text(
                                  controller.profileModelObj.value
                                      .cameronWilliamTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansRomanBold24
                                      .copyWith(height: 1.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 16, right: 16),
                              child: Obx(() => Text(
                                  controller
                                      .profileModelObj.value.emailTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansSemiBold18
                                      .copyWith(height: 1.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 3, top: 2, bottom: 2),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgLocation,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(9.00))),
                                    Padding(
                                        padding: getPadding(left: 7, bottom: 1),
                                        child: Obx(() => Text(
                                            controller.profileModelObj.value
                                                .countryTxt.value,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansMedium16Gray600
                                                .copyWith(height: 1.00))))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(left: 16, top: 29, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray100)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 29, right: 16),
                              child: Text("lbl_about".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansRomanBold18
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 35, right: 16),
                              child: Text("lbl_current".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansSemiBold16
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 15, right: 16),
                              child: Obx(() => Text(
                                  controller.profileModelObj.value.oneTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanBold16Bluegray900
                                      .copyWith(height: 1.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 34, right: 16),
                              child: Text("msg_expected_year_o".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansSemiBold16
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 12, right: 16),
                              child: Obx(() => Text(
                                  controller
                                      .profileModelObj.value.zipcodeTxt.value,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanBold16Bluegray900
                                      .copyWith(height: 1.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 33, right: 16),
                              child: Text("lbl_education".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansSemiBold16
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 15, right: 16),
                              child: Text("lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanBold16Bluegray900
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 32, right: 16),
                              child: Text("lbl_more_about_me".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansSemiBold16
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 20),
                              child: Text("lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanBold16Bluegray900
                                      .copyWith(height: 1.00))))
                    ]))))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
