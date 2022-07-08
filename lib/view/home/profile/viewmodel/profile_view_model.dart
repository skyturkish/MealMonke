import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/authenticate/register/model/register_user_model.dart';
import 'package:shopping/view/authenticate/register/service/lRegisterService.dart';
import 'package:shopping/view/authenticate/register/service/register_service.dart';
import 'package:shopping/view/home/profile/view/profile_view.dart';

abstract class ProfileViewModel extends State<ProfileView> {
  final profileFormKey = GlobalKey<FormState>();

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
    arrangeTextFields();

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

  void arrangeTextFields() async {
    RegisterUserModel user = Provider.of<UserProvider>(context, listen: false).user;
    nameController = TextEditingController(text: user.name);
    emailController = TextEditingController(text: user.email);
    mobileNoController = TextEditingController(text: user.mobileNo.toString());
    addressController = TextEditingController(text: user.address);
    passwordController = TextEditingController(text: user.password);
    passwordConfirmController = TextEditingController(text: user.password);
  }
}
