import 'package:flutter/material.dart';
import 'package:shopping/view/authenticate/reset_password_view.dart/view/reset_password.dart';

abstract class ResetPasswordViewModel extends State<ResetPasswordView> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}
