import '../challenges_screen/widgets/challenges_item_widget.dart';
import '../menu_draweritem/controller/menu_controller.dart';
import '../menu_draweritem/menu_draweritem.dart';
import 'controller/challenges_controller.dart';
import 'models/challenges_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/widgets/custom_button.dart';
import 'package:hackerrank/data/models/arraysDs/put_arrays_ds_req.dart';
import 'package:hackerrank/core/constants/boolean.dart';

// ignore_for_file: must_be_immutable
class ChallengesScreen extends GetWidget<ChallengesController> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
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
                                                MainAxisAlignment.spaceBetween,
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
                                                              width:
                                                                  getHorizontalSize(
                                                                      16.00))))),
                                              Container(
                                                  height:
                                                      getVerticalSize(20.00),
                                                  width:
                                                      getHorizontalSize(185.00),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
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
                                                                width:
                                                                    getHorizontalSize(
                                                                        185.00))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgHackerranklogo20X14,
                                                                    height:
                                                                        getVerticalSize(
                                                                            20.00),
                                                                    width: getHorizontalSize(
                                                                        14.00))))
                                                      ]))
                                            ])))
                              ])),
                      CustomButton(
                          width: 428,
                          text: controller.name,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingAll22,
                          fontStyle: ButtonFontStyle.OpenSansRomanBold18),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.challengesModelObj.value
                                  .challengesItemList.length,
                              itemBuilder: (context, index) {
                                ChallengesItemModel model = controller
                                    .challengesModelObj
                                    .value
                                    .challengesItemList[index];
                                return ChallengesItemWidget(model);
                              })))
                    ]))))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
