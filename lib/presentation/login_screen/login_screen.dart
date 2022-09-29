import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/core/utils/validation_functions.dart';
import 'package:hackerrank/widgets/custom_button.dart';
import 'package:hackerrank/widgets/custom_text_form_field.dart';
import 'package:hackerrank/data/models/login/post_login_req.dart';
import 'package:hackerrank/core/constants/boolean.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  RxString errorPrint = "".obs;

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
                                  child: Obx(() => Text(errorPrint.value,
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
                                      return "Please enter valid email";
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
                                      return "Please enter valid password";
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
      errorPrint.value = "Invalid Username Or Password!";
    }
    Get.find<PrefUtils>().setCookie("");
  }

  void _onCreateLoginError() {}
}
