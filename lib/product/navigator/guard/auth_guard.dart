import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/providers/user_provider.dart';

class AuthGuard extends AutoRouteGuard {
  final BuildContext context;
  AuthGuard({
    required this.context,
  });
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isEmpty = Provider.of<UserProvider>(context, listen: false).user.token.isEmpty;
    if (isEmpty) {
      resolver.next(true);
    } else {
      router.push(const BottomAppBarRoute());
    }
  }
}
