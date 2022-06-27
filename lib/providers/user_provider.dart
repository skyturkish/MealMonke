// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:shopping/view/authenticate/register/model/register_user_model.dart';

class UserProvider extends ChangeNotifier {
  RegisterUserModel _user =
      RegisterUserModel(id: '', name: '', email: '  ', mobileNo: 000, address: '', password: '', type: '', token: '');

  RegisterUserModel get user => _user;

  void setUser(String user) {
    _user = RegisterUserModel.fromJson(user);
    notifyListeners();
  }
}
