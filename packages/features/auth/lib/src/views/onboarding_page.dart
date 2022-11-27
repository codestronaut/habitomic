import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_libs/ui_libs.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const assetPath = Assets.images;
    final l10n = AuthLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: assetPath.onboarding.svg(
                  package: package,
                ),
              ),
            ),
            Padding(
              padding: Dimens.normal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: l10n.trackEvery,
                        style: Typo.of(
                          context,
                          family: FontFamily.workSans,
                        ).headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                        children: [
                          TextSpan(
                            text: l10n.onePercent,
                            style: const TextStyle(
                              color: ColorLib.orangeColor,
                            ),
                          ),
                          TextSpan(text: l10n.routineToBuild),
                          TextSpan(
                            text: l10n.newHabit,
                            style: const TextStyle(
                              color: ColorLib.grapeColor,
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    l10n.onBoardingDesc,
                    style: Typo.of(context).headline6.copyWith(
                          color: Colors.white.withOpacity(0.8),
                        ),
                  ),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: Dimens.normal,
                        shape: const StadiumBorder(),
                        backgroundColor: ColorLib.accentColor,
                        foregroundColor: ColorLib.primaryColor,
                        textStyle: Typo.of(context).headline6.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      child: Text(l10n.getStarted),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: Dimens.normal,
                        shape: const StadiumBorder(),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        foregroundColor: Colors.white,
                        textStyle: Typo.of(context).headline6.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      child: Text(l10n.iHaveAccount),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
