import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Text(
              LocaleKeys.login.tr(),
              style: TextStylesConstants.textFieldTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                LocaleKeys.addYourDetailsToLogin,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: CustomTextField(
                controller: _emailController,
                focusNode: _emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                hintText: LocaleKeys.yourEmail.tr(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: CustomTextField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                keyboardType: TextInputType.emailAddress,
                hintText: LocaleKeys.yourEmail.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
