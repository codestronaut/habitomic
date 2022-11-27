import 'package:flutter/material.dart';

enum FontFamily { workSans, sourceSans3 }

extension FontFamilyX on FontFamily {
  static Map<FontFamily, String> values = {
    FontFamily.workSans: 'WorkSans',
    FontFamily.sourceSans3: 'SourceSans3',
  };

  String get value => values[this]!;
}

class Typo {
  const Typo.of(this.context, {this.family = FontFamily.sourceSans3});
  final BuildContext context;
  final FontFamily family;

  static TextTheme textTheme = const TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );

  TextStyle get headline1 => Theme.of(context)
      .textTheme
      .headline1!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get headline2 => Theme.of(context)
      .textTheme
      .headline2!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get headline3 => Theme.of(context)
      .textTheme
      .headline3!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get headline4 => Theme.of(context)
      .textTheme
      .headline4!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get headline5 => Theme.of(context)
      .textTheme
      .headline5!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get headline6 => Theme.of(context)
      .textTheme
      .headline6!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get subtitle1 => Theme.of(context)
      .textTheme
      .subtitle1!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get subtitle2 => Theme.of(context)
      .textTheme
      .subtitle2!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get bodyText1 => Theme.of(context)
      .textTheme
      .bodyText1!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get bodyText2 => Theme.of(context)
      .textTheme
      .bodyText2!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get button => Theme.of(context)
      .textTheme
      .button!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get caption => Theme.of(context)
      .textTheme
      .caption!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
  TextStyle get overline => Theme.of(context)
      .textTheme
      .overline!
      .copyWith(fontFamily: family.value, package: 'ui_libs');
}
