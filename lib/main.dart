import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopping/core/constants/app/app_constants.dart';
import 'package:shopping/core/init/translations/language_manager.dart';
import 'package:shopping/product/navigator/app_router.dart';
import 'package:shopping/product/navigator/guard/auth_guard.dart';
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
  final RegisterService _registerService = RegisterService();
  late final AppRouter appRouter;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    getUser();
  }

  Future<void> getUser() async {
    await _registerService.getUserData(context);
    appRouter = AppRouter(authGuard: AuthGuard(context: context));
    isLoading = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading == false
        ? Container(
            color: Colors.red,
          )
        : MaterialApp.router(
            theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: const Color(0xffffffff),
              appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.red,
                ),
                titleTextStyle: TextStyle(color: Colors.black), // TODO will delete
                elevation: 0,
                color: Color(0xffffffff),
              ),
            ),
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            title: ApplicationConstants.APPLICATION_TITLE,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
  }
}
