import 'package:flutter/material.dart';
import 'package:demo_basic/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillIndigoA700 => BoxDecoration(
        color: ColorConstant.indigoA700,
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: ColorConstant.black90001,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder31 = BorderRadius.circular(
    getHorizontalSize(
      31.00,
    ),
  );
}
