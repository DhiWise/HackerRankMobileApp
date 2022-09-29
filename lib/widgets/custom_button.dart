import 'package:flutter/material.dart';
import 'package:hackerrank/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonPadding? padding;

  ButtonShape? shape;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case ButtonPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGreen500:
        return ColorConstant.green500;
      case ButtonVariant.FillGreenA400:
        return ColorConstant.greenA400;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGreen500:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.FillGreen500:
      case ButtonVariant.FillGreenA400:
      case ButtonVariant.FillWhiteA700:
        return null;
      default:
        return Border.all(
          color: ColorConstant.green500,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.OpenSansSemiBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSansSemiBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSansRomanBold18:
        return TextStyle(
          color: ColorConstant.bluegray900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.green500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll8,
  PaddingAll15,
  PaddingAll4,
  PaddingAll22,
}

enum ButtonShape {
  Square,
  CircleBorder10,
}

enum ButtonVariant {
  OutlineGreen500,
  FillGreen500,
  FillGreenA400,
  FillWhiteA700,
}

enum ButtonFontStyle {
  OpenSansSemiBold14Green500,
  OpenSansSemiBold14,
  OpenSansSemiBold12,
  OpenSansRomanBold18,
}
