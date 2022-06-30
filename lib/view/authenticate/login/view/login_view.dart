import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/view/authenticate/login/service/ILoginService.dart';
import 'package:shopping/view/authenticate/login/service/login_service.dart';
part 'login_view_part.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _signInFormKey = GlobalKey<FormState>();
  late final ILoginService _loginService;

  //Controllers
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  // FocusNodes
  late final FocusNode _passwordFocusNode;
  late final FocusNode _emailFocusNode;
  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _passwordFocusNode = FocusNode();
    _emailController = TextEditingController();
    _emailFocusNode = FocusNode();
    _loginService = LoginService();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _emailFocusNode.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
  }

  void signInUser() {
    _loginService.signInUser(
      context: context,
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
          key: _signInFormKey,
          child: Column(
            children: [
              Text(LocaleKeys.login.tr(), style: TextStylesConstants.titleLargeTextStyle(context: context)),
              Padding(
                padding: context.paddingOnlyTopSmall,
                child: const InfoText(),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child: EmailTextField(emailController: _emailController, emailFocusNode: _emailFocusNode),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child:
                    PasswornTextField(passwordController: _passwordController, passwordFocusNode: _passwordFocusNode),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child: CustomElevatedButton(
                  onPressed: () {
                    if (_signInFormKey.currentState!.validate()) {
                      FocusManager.instance.primaryFocus?.unfocus();

                      signInUser();
                    }
                  },
                  primary: ColorConstants.brightOrange,
                  child: Text(LocaleKeys.login.tr(),
                      style: TextStylesConstants.metroPolis(color: Colors.white, context: context)),
                ),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child: const ResetPasswordTextButton(),
              ),
              Padding(
                padding: context.paddingOnlyTopLarge,
                child: const LoginWithText(),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium + context.paddingMediumHorizontal,
                child: const FacebookButton(),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium + context.paddingMediumHorizontal,
                child: const GoogleButton(),
              ),
              const Spacer(),
              Padding(
                padding: context.paddingOnlyBottomMedium,
                child: const BottomText(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
