import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/product/error/error_handling.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/authenticate/login/model/login_user_model.dart';
import 'package:shopping/view/authenticate/login/service/ILoginService.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginService extends ILoginService {
  @override
  Future<void> signInUser({required BuildContext context, required String email, required String password}) async {
    LoginUserModel user = LoginUserModel(
      email: email,
      password: password,
    );

    http.Response response = await http.post(
      Uri.parse("${ApplicationConstants.uri}/api/signin"),
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
      headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
    );
    httpErrorHandle(
      response: response,
      context: context,
      onSuccess: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        print('********************************************************************');
        print(response.body);
        Provider.of<UserProvider>(context, listen: false).setUser(response.body);
        print(Provider.of<UserProvider>(context, listen: false).user.token.isNotEmpty);
        await prefs.setString(ApplicationConstants.CACHE_TOKEN_STRING_NAME, jsonDecode(response.body)['token']);
        context.router.push(const HomeRoute());
      },
    );
  }
}
