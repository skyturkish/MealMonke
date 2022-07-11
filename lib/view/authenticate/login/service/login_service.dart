// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/core/constants/navigation/navigation_constants.dart';
import 'package:shopping/product/error/error_handling.dart';
import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/authenticate/login/service/ILoginService.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginService extends ILoginService {
  @override
  Future<void> signInUser({required BuildContext context, required String email, required String password}) async {
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
        Provider.of<UserProvider>(context, listen: false).setUser(response.body);
        await prefs.setString(ApplicationConstants.CACHE_TOKEN_STRING_NAME, jsonDecode(response.body)['token']);
        Navigator.pushNamedAndRemoveUntil(context, NavigationConstants.ON_BOARD, (route) => false);
      },
    );
  }
}
