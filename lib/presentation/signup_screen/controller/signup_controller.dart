import 'package:demo_basic/core/app_export.dart';
import 'package:demo_basic/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:demo_basic/data/models/register/post_register_resp.dart';
import 'package:demo_basic/data/apiClient/api_client.dart';
import 'package:demo_basic/data/models/register/post_register_req.dart';

class SignupController extends GetxController {
  TextEditingController inputNameController = TextEditingController();

  TextEditingController inputMailController = TextEditingController();

  TextEditingController inputPasswordController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
    PostRegisterReq postRegisterReq = PostRegisterReq(
      username: this.inputNameController.text,
      password: this.inputPasswordController.text,
      email: this.inputMailController.text,
    );
    this.callCreateRegister(
      postRegisterReq.toJson(),
      successCall: _onCreateRegisterSuccess,
      errCall: _onCreateRegisterError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    inputNameController.dispose();
    inputMailController.dispose();
    inputPasswordController.dispose();
  }

  void callCreateRegister(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createRegister(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateRegisterSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateRegisterError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateRegisterSuccess(var response) {
    postRegisterResp = PostRegisterResp.fromJson(response);
  }

  void onCreateRegisterError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onCreateRegisterSuccess() {}
  void _onCreateRegisterError() {}
}
