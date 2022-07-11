import 'package:flutter/material.dart';
import 'package:shopping/core/constants/navigation/navigation_constants.dart';
import 'package:shopping/view/authenticate/login/view/login_view.dart';
import 'package:shopping/view/authenticate/onboard/view/on_board_view.dart';
import 'package:shopping/view/authenticate/register/view/register_view.dart';
import 'package:shopping/view/authenticate/reset_password_view.dart/view/reset_password.dart';
import 'package:shopping/view/home/home/view/home_view.dart';
import 'package:shopping/view/welcome/view/welcome_view.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case NavigationConstants.DEFAULT:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const WelcomeView(),
      );

    case NavigationConstants.LOGIN:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginView(),
      );
    case NavigationConstants.REGISTER:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RegisterView(),
      );
    case NavigationConstants.RESET_PASSWORD:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ResetPasswordView(),
      );
    // case NavigationConstants.RESET_PASSWORD_CODE:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const ResetPasswordCodeView(),
    //   );
    // case NavigationConstants.NEW_PASSWORD:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const NewPasswordView(),
    //   );
    case NavigationConstants.ON_BOARD:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OnBoardView(),
      );
    case NavigationConstants.HOME:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeView(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
