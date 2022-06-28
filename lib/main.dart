import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/init/translations/language_manager.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/providers/user_provider.dart';
import 'package:shopping/view/authenticate/register/service/register_service.dart';

void main() async {
  await _init();

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
  final _appRouter = AppRouter();
  final RegisterService _registerService = RegisterService();
  bool isloading = false;
  @override
  void initState() {
    super.initState();
    getUser();
  }

  Future<void> getUser() async {
    await _registerService.getUserData(context);
    isloading = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading == false
        ? Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/monkey_splash_screen.png"),
              ),
            ),
          )
        : MaterialApp.router(
            theme: ThemeData.light().copyWith(
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: ColorConstants.brightOrange,
                unselectedItemColor: Color(0xffb6b7b7),
                backgroundColor: Colors.white,
              ),
              scaffoldBackgroundColor: const Color(0xffffffff),
              appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(color: Colors.black), // TODO will delete
                elevation: 0,
                color: Color(0xffffffff),
              ),
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: ApplicationConstants.APPLICATION_TITLE,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
  }
}
