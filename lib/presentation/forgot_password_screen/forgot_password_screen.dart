import 'controller/forgot_password_controller.dart';
import 'package:demo_basic/core/app_export.dart';
import 'package:demo_basic/core/utils/validation_functions.dart';
import 'package:demo_basic/widgets/custom_button.dart';
import 'package:demo_basic/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                    padding:
                        getPadding(left: 30, top: 29, right: 30, bottom: 29),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              height: 32,
                              width: 54,
                              text: "lbl_back".tr,
                              onTap: onTapBack),
                          CustomTextFormField(
                              width: 305,
                              focusNode: FocusNode(),
                              controller: controller.inputMailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 168),
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: getHorizontalSize(228.00),
                                  margin:
                                      getMargin(top: 48, right: 58, bottom: 5),
                                  child: Text("msg_please_check_your".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterRegular34)))
                        ])))));
  }

  onTapBack() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
