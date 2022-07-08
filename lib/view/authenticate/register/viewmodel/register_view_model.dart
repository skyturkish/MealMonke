import 'package:flutter/material.dart';
import 'package:shopping/view/authenticate/register/service/lRegisterService.dart';
import 'package:shopping/view/authenticate/register/service/register_service.dart';
import 'package:shopping/view/authenticate/register/view/register_view.dart';

abstract class RegisterViewModel extends State<RegisterView> {
  final signUpFormKey = GlobalKey<FormState>();

  //Controllers
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController mobileNoController;
  late final TextEditingController addressController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordConfirmController;
  // FocusNodes
  late final FocusNode nameFocusNode;

  late final IRegisterService registerService;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    mobileNoController = TextEditingController();
    addressController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
    nameFocusNode = FocusNode();
    registerService = RegisterService();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    nameFocusNode.dispose();
    mobileNoController.dispose();
    addressController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
  }

  Future<void> signUpUser() async {
    await registerService.signUpUser(
      context: context,
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
    );
  }
}
