part of "login_view.dart";

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(LocaleKeys.addYourDetailsToLogin.tr(), style: TextStylesConstants.sideTextStyle(context: context));
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required TextEditingController emailController,
    required FocusNode emailFocusNode,
  })  : _emailController = emailController,
        _emailFocusNode = emailFocusNode,
        super(key: key);

  final TextEditingController _emailController;
  final FocusNode _emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _emailController,
      focusNode: _emailFocusNode,
      keyboardType: TextInputType.emailAddress,
      hintText: LocaleKeys.yourEmail.tr(),
    );
  }
}

class PasswornTextField extends StatelessWidget {
  const PasswornTextField({
    Key? key,
    required TextEditingController passwordController,
    required FocusNode passwordFocusNode,
  })  : _passwordController = passwordController,
        _passwordFocusNode = passwordFocusNode,
        super(key: key);

  final TextEditingController _passwordController;
  final FocusNode _passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _passwordController,
      focusNode: _passwordFocusNode,
      keyboardType: TextInputType.emailAddress,
      hintText: LocaleKeys.password.tr(),
    );
  }
}

class ResetPasswordTextButton extends StatelessWidget {
  const ResetPasswordTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          NavigationConstants.RESET_PASSWORD,
        );
      },
      child: Text(LocaleKeys.forgotYourPassword.tr(), style: TextStylesConstants.sideTextStyle(context: context)),
    );
  }
}

class LoginWithText extends StatelessWidget {
  const LoginWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(LocaleKeys.orLoginWith.tr(), style: TextStylesConstants.sideTextStyle(context: context));
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {},
      primary: ColorConstants.windowsBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.face),
          Text(
            LocaleKeys.loginFacebook.tr(),
            style: TextStylesConstants.authButtonTextStyle(context: context),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {},
      primary: ColorConstants.paleRed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.g_mobiledata),
          Text(
            LocaleKeys.loginGoogle.tr(),
            style: TextStylesConstants.authButtonTextStyle(context: context),
          ),
          const SizedBox(),
        ],
      ),
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
            text: LocaleKeys.signUp.tr(),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    NavigationConstants.REGISTER,
                    (route) => false,
                  ),
          )
        ],
      ),
    );
  }
}
