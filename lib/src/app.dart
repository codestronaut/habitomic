import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui_libs/ui_libs.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorLib.primaryColor,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', ''),
      supportedLocales: const [
        Locale('en', ''),
        Locale('id', ''),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AuthLocalizations.delegate,
      ],
      theme: ThemeData(
        textTheme: Typo.textTheme,
        scaffoldBackgroundColor: ColorLib.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorLib.primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: Typo.of(context).bodyText1.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      home: const OnboardingPage(),
    );
  }
}
