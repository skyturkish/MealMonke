import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/core/init/translations/language_manager.dart';
import 'package:shopping/view/welcome/view/welcome_view.dart';

void main() async {
  await _init();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.TRANSLATIONS_ASSET_PATH,
      startLocale: LanguageManager.instance.enLocale,
      child: const MyApp(),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: ApplicationConstants.APPLICATION_TITLE,
      home: const WelcomeView(),
    );
  }
}
