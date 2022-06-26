import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/extension/string_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // Böyle olunca alttakilerin kendini sıkıştırma sorunu gidiyor
          height: context.dynamicHeight(1),
          width: context.dynamicWidth(1),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("monkey_login_screen".toJPG),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: context.paddingOnlyBottomLarge + context.paddingLargeHorizontal,
                child: const Content(),
              ),
              Padding(
                padding: context.paddingOnlyBottomSmall,
                child: const LoginButton(),
              ),
              Padding(
                padding: context.paddingOnlyBottomMedium,
                child: const AccountButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.discoverTheBestFoods.tr(),
      style: TextStylesConstants.sideTextStyle,
      textAlign: TextAlign.center,
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        context.pushRoute(
          const LoginRoute(),
        );
      },
      primary: ColorConstants.brightOrange,
      child: Text(
        LocaleKeys.login.tr(),
        style: TextStylesConstants.metroPolis(color: Colors.white, size: 16),
      ),
    );
  }
}

class AccountButton extends StatelessWidget {
  const AccountButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(90),
        ),
        border: Border.all(color: ColorConstants.brightOrange),
      ),
      child: CustomElevatedButton(
        onPressed: () {},
        primary: Colors.white,
        child: Text(
          LocaleKeys.createAccount.tr(),
          style: TextStylesConstants.metroPolis(color: ColorConstants.brightOrange, size: 16),
        ),
      ),
    );
  }
}
