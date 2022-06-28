// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

abstract class ILoginService {
  Future<void> signInUser({required BuildContext context, required String email, required String password});
}
