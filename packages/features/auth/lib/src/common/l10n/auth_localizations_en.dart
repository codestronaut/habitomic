import 'auth_localizations.dart';

/// The translations for English (`en`).
class AuthLocalizationsEn extends AuthLocalizations {
  AuthLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get trackEvery => 'Track Every\n';

  @override
  String get onePercent => '1 Percent ';

  @override
  String get routineToBuild => 'Routine\nto Build ';

  @override
  String get newHabit => 'New Habit';

  @override
  String get onBoardingDesc => 'Create your habit plan, organize, get daily reminder, and analysis habit progress';

  @override
  String get getStarted => 'Get Started';

  @override
  String get iHaveAccount => 'I Have Account';
}
