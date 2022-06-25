import 'package:flutter/cupertino.dart';
import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/product/error/error_handling.dart';
import 'package:shopping/product/error/utils.dart';
import 'package:shopping/view/authenticate/register/model/register_user_model.dart';
import 'package:shopping/view/authenticate/register/service/lRegisterService.dart';
import 'package:http/http.dart' as http;

class RegisterService extends IRegisterService {
  @override
  Future<void> signUpUser(
      {required BuildContext context,
      required String name,
      required String email,
      int mobileNo = 0,
      String address = ' ',
      required String password}) async {
    try {
      RegisterUserModel user = RegisterUserModel(
          id: ' ',
          name: name,
          email: email,
          mobileNo: mobileNo,
          address: address,
          password: password,
          type: ' ',
          token: ' ');

      http.Response response = await http.post(
        Uri.parse("${ApplicationConstants.uri}/api/signup"),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
          response: response,
          context: context,
          onSuccess: () {
            showSnackBar(context, 'Account created! Login with the same credential!!');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
