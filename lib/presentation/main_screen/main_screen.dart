import 'controller/main_controller.dart';
import 'package:demo_basic/core/app_export.dart';
import 'package:flutter/material.dart';

class MainScreen extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: size.width,
                padding: getPadding(left: 48, right: 48),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEmail,
                          height: getSize(50.00),
                          width: getSize(50.00),
                          margin: getMargin(top: 132)),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtLogout();
                              },
                              child: Container(
                                  width: getHorizontalSize(141.00),
                                  margin: getMargin(top: 338),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.txtFillIndigoA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder31),
                                  child: Text("lbl_logout".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular30))))
                    ]))));
  }

  onTapTxtLogout() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
