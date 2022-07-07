part of "reset_password.dart";

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.resetPasswordContent.tr(),
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
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

class SendButton extends StatelessWidget {
  const SendButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {},
      primary: ColorConstants.brightOrange,
      child: Text(LocaleKeys.send.tr(),
          style: TextStylesConstants.metroPolis(color: ColorConstants.white, context: context)),
    );
  }
}
