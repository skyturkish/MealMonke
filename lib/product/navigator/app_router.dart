import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping/view/authenticate/login/view/login_view.dart';
import 'package:shopping/view/authenticate/onboard/view/on_board_view.dart';
import 'package:shopping/view/authenticate/register/view/register_view.dart';
import 'package:shopping/view/authenticate/reset_password_view.dart/view/reset_password.dart';
import 'package:shopping/view/home/home/view/home_view.dart';
import 'package:shopping/view/welcome/view/welcome_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomeView, path: 'welcome', initial: true),
    AutoRoute(
      page: LoginView,
      path: 'login',
    ),
    AutoRoute(page: RegisterView, path: 'register'),
    AutoRoute(page: ResetPasswordView, path: 'resetPassword'),
    AutoRoute(page: OnBoardView, path: 'onBoard'),
    AutoRoute(page: HomeView, path: 'home')
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}
