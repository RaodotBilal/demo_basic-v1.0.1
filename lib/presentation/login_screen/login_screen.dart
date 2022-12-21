import 'controller/login_controller.dart';
import 'package:demo_basic/core/app_export.dart';
import 'package:demo_basic/core/utils/validation_functions.dart';
import 'package:demo_basic/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    width: size.width,
                    padding: getPadding(left: 40, right: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 114, top: 16),
                                  child: Text("lbl_log_in".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular34))),
                          CustomTextFormField(
                              width: 305,
                              focusNode: FocusNode(),
                              controller: controller.inputMailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 44),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 305,
                              focusNode: FocusNode(),
                              controller: controller.inputPasswordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 31),
                              textInputAction: TextInputAction.done,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 44),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18)))),
                          GestureDetector(
                              onTap: () {
                                onTapTxtLogin2();
                              },
                              child: Container(
                                  width: getHorizontalSize(141.00),
                                  margin: getMargin(top: 42),
                                  padding: getPadding(
                                      left: 23, top: 11, right: 23, bottom: 11),
                                  decoration: AppDecoration.txtFillIndigoA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder31),
                                  child: Text("lbl_login2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterRegular30))),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveaccount();
                              },
                              child: Padding(
                                  padding: getPadding(top: 157),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_don_t_have_account2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_signup".tr,
                                            style: TextStyle(
                                                color: ColorConstant.red700,
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapTxtLogin2() {
    Get.toNamed(AppRoutes.mainScreen);
  }

  onTapTxtDonthaveaccount() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
