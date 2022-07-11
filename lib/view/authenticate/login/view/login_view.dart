import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/navigation/navigation_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';
import 'package:shopping/view/authenticate/login/viewmodel/login_view_model.dart';
part 'login_view_part.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return MySafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Form(
          key: signInFormKey,
          child: Column(
            children: [
              Text(LocaleKeys.login.tr(), style: TextStylesConstants.titleLargeTextStyle(context: context)),
              Padding(
                padding: context.paddingOnlyTopSmall,
                child: const InfoText(),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child: EmailTextField(emailController: emailController, emailFocusNode: emailFocusNode),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child: PasswornTextField(passwordController: passwordController, passwordFocusNode: passwordFocusNode),
              ),
              Padding(
                padding: context.paddingOnlyTopMedium,
                child: CustomElevatedButton(
                  onPressed: () {
                    if (signInFormKey.currentState!.validate()) {
                      FocusManager.instance.primaryFocus?.unfocus();

                      signInUser();
                    }
                  },
                  primary: ColorConstants.brightOrange,
                  child: Text(LocaleKeys.login.tr(),
                      style: TextStylesConstants.buttomMediumTextStyleWhite(context: context)),
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
