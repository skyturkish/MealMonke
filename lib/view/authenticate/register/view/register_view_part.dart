part of "register_view.dart";

class ContentText extends StatelessWidget {
  const ContentText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.addYourDetailsToLogin.tr(),
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key? key,
    required TextEditingController nameController,
    required FocusNode nameFocusNode,
  })  : _nameController = nameController,
        _nameFocusNode = nameFocusNode,
        super(key: key);

  final TextEditingController _nameController;
  final FocusNode _nameFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _nameController,
      focusNode: _nameFocusNode,
      keyboardType: TextInputType.name,
      hintText: LocaleKeys.name.tr(),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      hintText: LocaleKeys.email.tr(),
    );
  }
}

class MobileNoTextField extends StatelessWidget {
  const MobileNoTextField({
    Key? key,
    required TextEditingController mobileNoController,
  })  : _mobileNoController = mobileNoController,
        super(key: key);

  final TextEditingController _mobileNoController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _mobileNoController,
      keyboardType: TextInputType.number,
      hintText: LocaleKeys.mobileNo.tr(),
    );
  }
}

class AddressTextField extends StatelessWidget {
  const AddressTextField({
    Key? key,
    required TextEditingController addressController,
  })  : _addressController = addressController,
        super(key: key);

  final TextEditingController _addressController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _addressController,
      keyboardType: TextInputType.emailAddress,
      hintText: LocaleKeys.address.tr(),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _passwordController,
      keyboardType: TextInputType.emailAddress,
      hintText: LocaleKeys.password.tr(),
    );
  }
}

class ConfirmPasswordTextField extends StatelessWidget {
  const ConfirmPasswordTextField({
    Key? key,
    required TextEditingController passwordConfirmController,
  })  : _passwordConfirmController = passwordConfirmController,
        super(key: key);

  final TextEditingController _passwordConfirmController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _passwordConfirmController,
      keyboardType: TextInputType.emailAddress,
      hintText: LocaleKeys.confirmPassword.tr(),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(style: TextStylesConstants.sideTextStyle(context: context), text: LocaleKeys.dontHaveAnAccount.tr()),
          TextSpan(
            style: TextStylesConstants.buttonMediumTextStyle(context: context),
            text: LocaleKeys.login.tr(),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.router.push(
                    const LoginRoute(),
                  ),
          )
        ],
      ),
    );
  }
}
