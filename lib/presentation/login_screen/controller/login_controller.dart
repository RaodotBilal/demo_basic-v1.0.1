import 'package:demo_basic/core/app_export.dart';
import 'package:demo_basic/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:demo_basic/data/models/login/post_login_resp.dart';
import 'package:demo_basic/data/apiClient/api_client.dart';
import 'package:demo_basic/data/models/login/post_login_req.dart';

class LoginController extends GetxController {
  TextEditingController inputMailController = TextEditingController();

  TextEditingController inputPasswordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
    PostLoginReq postLoginReq = PostLoginReq(
      username: this.inputMailController.text,
      password: this.inputPasswordController.text,
    );
    this.callCreateLogin(
      postLoginReq.toJson(),
      successCall: _onCreateLoginSuccess,
      errCall: _onCreateLoginError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    inputMailController.dispose();
    inputPasswordController.dispose();
  }

  void callCreateLogin(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createLogin(
        headers: {
          'Content-Type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateLoginSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateLoginError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateLoginSuccess(var response) {
    postLoginResp = PostLoginResp.fromJson(response);
  }

  void onCreateLoginError(var err) {
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

  void _onCreateLoginSuccess() {}
  void _onCreateLoginError() {}
}
