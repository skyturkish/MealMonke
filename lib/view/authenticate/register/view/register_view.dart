import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/padding/padding_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/view/authenticate/register/service/lRegisterService.dart';
import 'package:shopping/view/authenticate/register/service/register_service.dart';
part "register_view_part.dart";

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _signUpFormKey = GlobalKey<FormState>();

  //Controllers
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _mobileNoController;
  late final TextEditingController _addressController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordConfirmController;
  // FocusNodes
  late final FocusNode _nameFocusNode;

  late final IRegisterService _registerService;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _mobileNoController = TextEditingController();
    _addressController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmController = TextEditingController();
    _nameFocusNode = FocusNode();
    _registerService = RegisterService();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _nameFocusNode.dispose();
    _mobileNoController.dispose();
    _addressController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  Future<void> signUpUser() async {
    await _registerService.signUpUser(
      context: context,
      name: _nameController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Form(
          key: _signUpFormKey,
          child: Column(
            children: [
              Text(
                LocaleKeys.signUp.tr(),
                style: TextStylesConstants.titleTextStyle,
              ),
              const Padding(
                padding: PaddingConstants.onlyTopSmall,
                child: ContentText(),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: NameTextField(nameController: _nameController, nameFocusNode: _nameFocusNode),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: EmailTextField(emailController: _emailController),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: MobileNoTextField(mobileNoController: _mobileNoController),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: AddressTextField(addressController: _addressController),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: PasswordTextField(passwordController: _passwordController),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: ConfirmPasswordTextField(passwordConfirmController: _passwordConfirmController),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: CustomElevatedButton(
                  onPressed: () {
                    if (_signUpFormKey.currentState!.validate()) {
                      signUpUser();
                    }
                  },
                  primary: ColorConstants.brightOrange,
                  child: Text(
                    LocaleKeys.signUp.tr(),
                    style: TextStylesConstants.metroPolis(color: ColorConstants.whiteTextField, size: 16),
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: PaddingConstants.onlyBottomMedium,
                child: BottomText(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
