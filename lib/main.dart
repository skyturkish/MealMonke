import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/core/init/translations/language_manager.dart';
import 'package:shopping/product/navigator/app_router.dart';

void main() async {
  await _init();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.TRANSLATIONS_ASSET_PATH,
      startLocale: LanguageManager.instance.enLocale,
      child: MyApp(),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: ApplicationConstants.APPLICATION_TITLE,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
