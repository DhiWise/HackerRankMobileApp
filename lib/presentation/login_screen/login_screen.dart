import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/core/utils/validation_functions.dart';
import 'package:hackerrank/widgets/custom_button.dart';
import 'package:hackerrank/widgets/custom_text_form_field.dart';
import 'package:hackerrank/data/models/login/post_login_req.dart';
import 'package:hackerrank/core/constants/boolean.dart';
import '../../data/models/arraysDs/put_arrays_ds_req.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(56.00),
                                      width: size.width,
                                      decoration: AppDecoration.fillBluegray800,
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 40,
                                                        top: 18,
                                                        right: 40,
                                                        bottom: 18),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgHackerranklogo,
                                                        height: getVerticalSize(
                                                            20.00),
                                                        width:
                                                            getHorizontalSize(
                                                                185.00)))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 121,
                                                        top: 18,
                                                        right: 121,
                                                        bottom: 18),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgHackerranklogo20X14,
                                                        height: getVerticalSize(
                                                            20.00),
                                                        width:
                                                            getHorizontalSize(
                                                                14.00))))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 60, right: 16),
                                  child: Text("lbl_login".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSansRomanBold24
                                          .copyWith(height: 1.00))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 60, right: 16),
                                  child: Obx(() => Text(controller.loginModelObj.value.errorPrint.value,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtOpenSansRomanBold16Red900
                                          .copyWith(height: 1.00)))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "msg_your_username_o".tr,
                                  margin:
                                      getMargin(left: 16, top: 21, right: 16),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 17,
                                          top: 15,
                                          right: 13,
                                          bottom: 15),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgUser)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(18.00),
                                      minHeight: getSize(18.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "lbl_please_enter_valid_email".tr;
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.emailOneController,
                                  hintText: "lbl_your_password".tr,
                                  margin:
                                      getMargin(left: 16, top: 16, right: 16),
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 15,
                                          right: 12,
                                          bottom: 15),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(18.00),
                                      minHeight: getSize(18.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "lbl_please_enter_valid_password".tr;
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 396,
                                  text: "lbl_log_in2".tr,
                                  margin: getMargin(
                                      left: 16, top: 32, right: 16, bottom: 20),
                                  variant: ButtonVariant.FillGreen500,
                                  shape: ButtonShape.Square,
                                  padding: ButtonPadding.PaddingAll15,
                                  fontStyle: ButtonFontStyle.OpenSansSemiBold14,
                                  onTap: onTapBtnLogin2)
                            ])))))));
  }

  void onTapBtnLogin2() {
    if (_formKey.currentState!.validate()) {
      PostLoginReq postLoginReq = PostLoginReq(
        login: controller.emailController.text,
        password: controller.emailOneController.text,
        rememberMe: Boolean.no,
        fallback: Boolean.no,
      );
      controller.callCreateLogin(
        postLoginReq.toJson(),
        successCall: _onCreateLoginSuccess,
        errCall: _onCreateLoginError,
      );
    }
  }

  void _onCreateLoginSuccess() {
    Get.find<PrefUtils>()
        .setCsrf(controller.postLoginResp.csrfToken!.toString());
    if (controller.postLoginResp.errors?.length == 0) {
      Get.offAllNamed(AppRoutes.prepareScreen);
    } else {
      controller.loginModelObj.value.errorPrint.value = "Invalid Username Or Password!";
    }
    Get.find<PrefUtils>().setCookie(
        r'''_gcl_au=1.1.546695157.1664170746; _wchtbl_uid=78b45c87-1783-4d6c-b88b-6b89cecb0108; _wchtbl_sid=d02f8f47-5f2d-4380-994a-88596a7d437e; _gd_visitor=f7e7f1f7-1a32-4f84-8988-c27c21dd5b1e; _gd_session=963bb147-e7bb-4fc2-8e33-1229bb27182d; _hp2_ses_props.547804831=%7B%22ts%22%3A1664170745775%2C%22d%22%3A%22www.hackerrank.com%22%2C%22h%22%3A%22%2F%22%7D; _wchtbl_do_not_process=0; _wchtbl_pixel_sync=1; _clck=1ohiibo|1|f57|0; _an_uid=0; mp_bcb75af88bccc92724ac5fd79271e1ff_mixpanel=%7B%22distinct_id%22%3A%20%223511ff5b-a468-4bb3-8e2c-cf9ecb7528fb%22%2C%22%24device_id%22%3A%20%22183784e5f61309-09bb4ae63f2fcb-59447049-1fa400-183784e5f62514%22%2C%22%24user_id%22%3A%20%223511ff5b-a468-4bb3-8e2c-cf9ecb7528fb%22%2C%22%24initial_referrer%22%3A%20%22%24direct%22%2C%22%24initial_referring_domain%22%3A%20%22%24direct%22%7D; _uetsid=8936dc503d5d11ed87da4b2d1e39b274; _uetvid=89372c303d5d11edb48aaf2590f5dc62; _gd_svisitor=9dda1cb87a1e0000fc3a31632b0000008d972800; _mkto_trk=id:487-WAY-049&token:_mch-hackerrank.com-1664170749371-77565; _clsk=n4zbsg|1664170749582|2|1|n.clarity.ms/collect; _hrank_session=54c95007105748bc9b0be923a6416e028f451d82eb174d4db7c6a7d640c91ed2a908b529a407281d618259c1abd7c15a9c26b3ade0a411d69682b820a15f4705; user_type=hacker; hackerrank_mixpanel_token=52388285-37fc-48d9-ba48-c8d4ce2b6eaa; react_var=false__cnt3; react_var2=false__cnt3; hrc_l_i=T; metrics_user_identifier=ce838a-58e3a058ce548a253b5be06f489c74907b1d02ce; _hjFirstSeen=1; _hjIncludedInSessionSample=0; _hjSession_2036154=eyJpZCI6IjkzMDllNDViLTFjYjEtNDQ2Yi1hMjViLTVkMzg5OGNhZTdkNCIsImNyZWF0ZWQiOjE2NjQxNzA4Mjc2NjcsImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; _hjSessionUser_2036154=eyJpZCI6Ijk5M2U4NDJkLTgyNDgtNTZiYy05MWI1LWY4NjJkNzE0YWRiYyIsImNyZWF0ZWQiOjE2NjQxNzA4Mjc2MzgsImV4aXN0aW5nIjp0cnVlfQ==; _hp2_id.547804831=%7B%22userId%22%3A%227381295043653337%22%2C%22pageviewId%22%3A%227895191728074071%22%2C%22sessionId%22%3A%224921692713307099%22%2C%22identity%22%3Anull%2C%22trackerVersion%22%3A%224.0%22%7D; hackerrank_mixpanel_token=a899a51e-e6b5-4208-a126-49f3ff9afd9f; react_var=false__cnt3; react_var2=false__cnt3; session_landing_url=https%3A%2F%2Fwww.hackerrank.com%2Frest%2Fcontests%2Fmaster%2Fhackers%2Fme; session_referrer=http%3A%2F%2Flocalhost%3A43061%2F; session_referring_domain=localhost''');
    Get.find<PrefUtils>().setCsrfWithCookie(
        "n0G805iCMMC8dhO/sV3ZIElsUoC0dku3n2BTIZJcbeUjENjonYMGg5X9Y+MB+Tuj7cUc/SP1C7BmS+FmQdhs8g==");
  }

  void _onCreateLoginError() {}
}
