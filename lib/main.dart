import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/init/navigation/navigation_route.dart';
import 'package:shopping/core/init/translations/language_manager.dart';

import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/authenticate/register/service/register_service.dart';
import 'package:shopping/view/home/home/view/BottomAppBar.dart';
import 'package:shopping/view/home/profile/view/profile_view.dart';
import 'package:shopping/view/welcome/view/welcome_view.dart';

void main() async {
  _init();
  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.TRANSLATIONS_ASSET_PATH,
      startLocale: LanguageManager.instance.enLocale,
      child: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ], child: const MyApp()),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final RegisterService _registerService = RegisterService();

  @override
  void initState() {
    super.initState();
    _updateAppbar();
    _registerService.getUserData(context);
  }

  void _updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: ColorConstants.white,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle().copyWith(
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: Colors.red,
              systemNavigationBarDividerColor: Colors.red),
          elevation: 0,
          color: ColorConstants.white,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ? const BottomAppBarView()
              : const ProfileView()
          : const WelcomeView(),
    );
  }
}
