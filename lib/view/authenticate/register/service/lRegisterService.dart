import 'package:flutter/cupertino.dart';

abstract class IRegisterService {
  Future<void> signUpUser(
      {required BuildContext context,
      required String name,
      required String email,
      int mobileNo = 0,
      String address = ' ',
      required String password});
}
