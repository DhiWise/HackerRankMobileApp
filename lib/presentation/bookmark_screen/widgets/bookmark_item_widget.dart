import '../../../core/constants/boolean.dart';
import '../../../data/models/arraysDs/put_arrays_ds_req.dart';
import '../controller/bookmark_controller.dart';
import '../models/bookmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';
import 'package:hackerrank/widgets/custom_button.dart';

// ignore: must_be_immutable
class BookmarkItemWidget extends StatelessWidget {
  BookmarkItemWidget(this.bookmarkItemModelObj);

  BookmarkItemModel bookmarkItemModelObj;

  var controller = Get.find<BookmarkController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 4.0,
        bottom: 4.0,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 21,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Obx(
                      () => Text(
                        bookmarkItemModelObj.nameTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansMedium16.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapImgStar(bookmarkItemModelObj.slug.value);
                    },
                    child: Padding(
                      padding: getPadding(
                        bottom: 3,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgStar14X14,
                        height: getSize(
                          14.00,
                        ),
                        width: getSize(
                          14.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              319.00,
            ),
            margin: getMargin(
              left: 16,
              top: 16,
              right: 16,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: bookmarkItemModelObj.difficulty.value,
                    style: TextStyle(
                      color: ColorConstant.green500,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      height: 1.57,
                    ),
                  ),
                  TextSpan(
                    text: bookmarkItemModelObj.descriptionTxt.value,
                    style: TextStyle(
                      color: ColorConstant.gray600,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.57,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomButton(
            width: 396,
            text: "lbl_solve_challenge".tr,
            margin: getMargin(
              left: 16,
              top: 17,
              right: 16,
              bottom: 16,
            ),
            shape: ButtonShape.Square,
            onTap: () {
              onTapBtnSolvechallenge(bookmarkItemModelObj.slug.value);
            },
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

onTapBtnSolvechallenge(slug) async {
  var url = 'https://www.hackerrank.com/challenges/' +
      slug +
      '/problem?isFullScreen=false';
  if (!await launch(url)) {
    throw 'Could not launch';
  }
}

void onTapImgStar(String slug) {
  PutArraysDsReq putArraysDsReq = PutArraysDsReq(bookmarked: Boolean.yes);
  Get.find<BookmarkController>().callUpdateArraysDs(
      slug, putArraysDsReq.toJson(),
      successCall: _onUpdateArraysDsSuccess, errCall: _onUpdateArraysDsError);
}

void _onUpdateArraysDsSuccess() {
  Get.find<BookmarkController>().callFetchChallenges();
}

void _onUpdateArraysDsError() {}
