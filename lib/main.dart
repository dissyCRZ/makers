import 'package:flutter/material.dart';
import 'package:makers_app/features/login/pages/login_page.dart';
import 'package:makers_app/features/login/pages/register_page.dart';
import 'package:makers_app/features/main/widgets/nav_bar.dart';
import 'package:makers_app/features/video_player/pages/video_player.dart';
import 'package:makers_app/features/welcome/pages/welcome_page.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:makers_app/utils/router/router.dart';
import 'package:makers_app/utils/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final _appRouter = AppRouter();
  String lang = 'ru';

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.system,
      light: kLightTheme,
      dark: kDarkTheme,
      builder: (ligth, dark) => MaterialApp(
        //routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        theme: ligth,
        darkTheme: dark,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        //locale: Locale(lang),
        supportedLocales: S.delegate.supportedLocales,
        home: RegisterPage(),
        // home: CustomNavigationBar(),
      ),
    );
  }
}
