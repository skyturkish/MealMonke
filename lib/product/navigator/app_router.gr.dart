// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const WelcomeView());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginView());
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterView());
    },
    ResetPasswordRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ResetPasswordView());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: 'welcome', fullMatch: true),
        RouteConfig(WelcomeRoute.name, path: 'welcome'),
        RouteConfig(LoginRoute.name, path: 'login'),
        RouteConfig(RegisterRoute.name, path: 'register'),
        RouteConfig(ResetPasswordRoute.name, path: 'resetPassword')
      ];
}

/// generated route for
/// [WelcomeView]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: 'welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterView]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [ResetPasswordView]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: 'resetPassword');

  static const String name = 'ResetPasswordRoute';
}
