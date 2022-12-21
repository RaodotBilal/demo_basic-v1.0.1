import 'controller/splash_controller.dart';
import 'package:demo_basic/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: size.width,
                padding: getPadding(left: 19, right: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 426),
                          child: Text("lbl_welcome_back".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular34)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("msg_let_s_have_a_great".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular22)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup10,
                          height: getSize(102.00),
                          width: getSize(102.00),
                          alignment: Alignment.center,
                          margin: getMargin(top: 84))
                    ]))));
  }
}
