import 'controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: double.infinity,
                      margin: getMargin(right: 100),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 40, right: 16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CommonImageView(
                                          imagePath: ImageConstant
                                              .imgHackerranklogo20X185,
                                          height: getVerticalSize(20.00),
                                          width: getHorizontalSize(185.00)),
                                      GestureDetector(
                                          onTap: () {
                                            onTapImgArrowright();
                                          },
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getSize(16.00),
                                                  width: getSize(16.00))))
                                    ])),
                            Container(
                                width: double.infinity,
                                margin: getMargin(
                                    left: 16, top: 66, right: 16, bottom: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(10.00))),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: getMargin(top: 3, right: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          10.00))),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtPrepar();
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "lbl_prepar".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSansSemiBold16
                                                                .copyWith(
                                                                    height:
                                                                        1.00)))),
                                                CustomButton(
                                                    width: 44,
                                                    text: "lbl_new".tr,
                                                    margin: getMargin(
                                                        left: 9, bottom: 1),
                                                    variant: ButtonVariant
                                                        .FillGreenA400,
                                                    padding: ButtonPadding
                                                        .PaddingAll4,
                                                    fontStyle: ButtonFontStyle
                                                        .OpenSansSemiBold12)
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(296.00),
                                          margin: getMargin(top: 26),
                                          decoration: BoxDecoration(
                                              color:
                                                  ColorConstant.bluegray100)),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtProfile();
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  top: 27, right: 10),
                                              child: Text("lbl_profile".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansSemiBold16
                                                      .copyWith(
                                                          height: 1.00)))),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtBookmarks();
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  top: 26, right: 10),
                                              child: Text("lbl_bookmarks".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansSemiBold16
                                                      .copyWith(
                                                          height: 1.00)))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(296.00),
                                          margin:
                                              getMargin(top: 27, bottom: 530),
                                          decoration: BoxDecoration(
                                              color:
                                                  ColorConstant.bluegray100)),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtLogout();
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  top: 22, right: 10),
                                              child: Text("lbl_logout".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansSemiBold16GreenA400
                                                      .copyWith(height: 1.00))))
                                    ]))
                          ])))
            ]));
  }

  onTapImgArrowright() {
    Get.back();
  }

  onTapTxtPrepar() {
    onTapImgArrowright();
    Get.toNamed(AppRoutes.prepareScreen);
  }

  onTapTxtProfile() {
    onTapImgArrowright();
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapTxtBookmarks() {
    onTapImgArrowright();
    Get.toNamed(AppRoutes.bookmarkScreen);
  }

  void onTapTxtLogout() {
    onTapImgArrowright();
    Get.defaultDialog(
        title: 'Are you sure you want to Logout?',
        confirm: GestureDetector(
          child: Text('confirm'),
          onTap: (() => {
                controller.callDeleteLogout(
                  successCall: _onDeleteLogoutSuccess,
                  errCall: _onDeleteLogoutError,
                )
              }),
        ),
        cancel: GestureDetector(
          child: Text('cancel'),
          onTap: (() => {Get.back()}),
        ),
        onCancel: () => {Get.back()},
        middleText: "");
  }

  void _onDeleteLogoutSuccess() {}
  void _onDeleteLogoutError() {}
}
