import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/view/_product/_widgets/safearea/my_safe_area.dart';
import 'package:shopping/view/authenticate/register/viewmodel/register_view_model.dart';
part "register_view_part.dart";

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends RegisterViewModel {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return MySafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Form(
            key: signUpFormKey,
            child: SizedBox(
              height: context.dynamicHeight(isKeyboard ? 1.23 : 0.9),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    LocaleKeys.signUp.tr(),
                    style: TextStylesConstants.titleLargeTextStyle(context: context),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopSmall,
                    child: const ContentText(),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: NameTextField(nameController: nameController, nameFocusNode: nameFocusNode),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: EmailTextField(emailController: emailController),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: MobileNoTextField(mobileNoController: mobileNoController),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: AddressTextField(addressController: addressController),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: PasswordTextField(passwordController: passwordController),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: ConfirmPasswordTextField(passwordConfirmController: passwordConfirmController),
                  ),
                  Padding(
                    padding: context.paddingOnlyTopMedium,
                    child: CustomElevatedButton(
                      onPressed: () {
                        if (signUpFormKey.currentState!.validate()) {
                          signUpUser();
                          FocusManager.instance.primaryFocus?.unfocus();
                        }
                      },
                      primary: ColorConstants.brightOrange,
                      child: Text(LocaleKeys.signUp.tr(),
                          style: TextStylesConstants.buttomMediumTextStyleWhite(context: context)),
                    ),
                  ),
                  Padding(
                    padding: context.paddingOnlyBottomMedium + context.paddingOnlyTopLargeXX,
                    child: const BottomText(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
