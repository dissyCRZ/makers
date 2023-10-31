import 'package:flutter/material.dart';
import 'package:makers_app/features/login/pages/login_page.dart';
import 'package:makers_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
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

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      light: kLightTheme,
      dark: kLightTheme,
      builder: (ligth, dark) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ligth,
        darkTheme: dark,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: LoginPage(),
      ),
    );
  }
}
