import 'package:flutter/foundation.dart';

class ModeConfig {
  static bool get isDebug => kDebugMode;
  static bool get isProfile => kProfileMode;
  static bool get isRelease => kReleaseMode;
  static String get flutterMode => isDebug
      ? 'debug'
      : isProfile
          ? 'profile'
          : 'release';
}
