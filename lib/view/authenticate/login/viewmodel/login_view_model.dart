import 'package:flutter/material.dart';
import 'package:shopping/view/authenticate/login/service/ILoginService.dart';
import 'package:shopping/view/authenticate/login/service/login_service.dart';
import 'package:shopping/view/authenticate/login/view/login_view.dart';

abstract class LoginViewModel extends State<LoginView> {
  final signInFormKey = GlobalKey<FormState>();
  late final ILoginService loginService;

  //Controllers
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  // FocusNodes
  late final FocusNode passwordFocusNode;
  late final FocusNode emailFocusNode;
  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    passwordFocusNode = FocusNode();
    emailController = TextEditingController();
    emailFocusNode = FocusNode();
    loginService = LoginService();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
  }

  void signInUser() {
    loginService.signInUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
    );
  }
}
