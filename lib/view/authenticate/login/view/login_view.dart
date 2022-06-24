import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/padding/padding_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
part 'login_view_part.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                LocaleKeys.login.tr(),
                style: TextStylesConstants.titleTextStyle,
              ),
              const Padding(
                padding: PaddingConstants.onlyTopSmall,
                child: InfoText(),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: EmailTextField(emailController: _emailController, emailFocusNode: _emailFocusNode),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium,
                child:
                    PasswornTextField(passwordController: _passwordController, passwordFocusNode: _passwordFocusNode),
              ),
              const Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: LoginButton(),
              ),
              const Padding(
                padding: PaddingConstants.onlyTopMedium,
                child: ResetPasswordTextButton(),
              ),
              const Padding(
                padding: PaddingConstants.onlyTopLarge,
                child: LoginWithText(),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium + PaddingConstants.symmetricHorizontalMedium,
                child: const FacebookButton(),
              ),
              Padding(
                padding: PaddingConstants.onlyTopMedium + PaddingConstants.symmetricHorizontalMedium,
                child: const GoogleButton(),
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
