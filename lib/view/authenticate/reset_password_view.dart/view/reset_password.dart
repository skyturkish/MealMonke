import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/padding/padding_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
part "reset_password_part.dart";

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              LocaleKeys.resetPassword.tr(),
              style: TextStylesConstants.titleTextStyle,
            ),
            Padding(
              padding: PaddingConstants.onlyTopSmall + PaddingConstants.symmetricHorizontalMedium,
              child: const Content(),
            ),
            Padding(
              padding: PaddingConstants.onlyTopLargeXX,
              child: EmailTextField(emailController: _emailController),
            ),
            const Padding(
              padding: PaddingConstants.onlyTopLarge,
              child: SendButton(),
            ),
          ],
        ),
      ),
    );
  }
}