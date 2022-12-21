import 'controller/signup_controller.dart';
import 'package:demo_basic/core/app_export.dart';
import 'package:demo_basic/core/utils/validation_functions.dart';
import 'package:demo_basic/widgets/custom_button.dart';
import 'package:demo_basic/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90001,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 38, top: 34, right: 38, bottom: 34),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              height: 32,
                              width: 54,
                              text: "lbl_back".tr,
                              onTap: onTapBack,
                              alignment: Alignment.centerLeft),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 115),
                                  child: Text("lbl_signup".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular34))),
                          CustomTextFormField(
                              width: 305,
                              focusNode: FocusNode(),
                              controller: controller.inputNameController,
                              hintText: "lbl_name".tr,
                              margin: getMargin(top: 68, right: 12),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 305,
                              focusNode: FocusNode(),
                              controller: controller.inputMailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 45, right: 12),
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
                              margin: getMargin(top: 39, right: 12),
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
                          CustomButton(
                              height: 64,
                              width: 141,
                              text: "lbl_signup".tr,
                              margin: getMargin(top: 65, bottom: 5),
                              variant: ButtonVariant.FillIndigoA700,
                              shape: ButtonShape.CircleBorder32,
                              padding: ButtonPadding.PaddingAll9,
                              fontStyle: ButtonFontStyle.InterRegular30,
                              onTap: onTapSignupOne,
                              alignment: Alignment.center)
                        ])))));
  }

  onTapBack() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapSignupOne() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
