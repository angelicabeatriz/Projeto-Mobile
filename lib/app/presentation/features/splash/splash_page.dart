import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';

import '../../shared/theme/app_animations.dart';
import '../../shared/theme/app_images.dart';
import '../../shared/theme/app_typography.dart';

class SplashPage extends HookWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      splashDelay(context);
    }, []);
    return Scaffold(
      body: Container(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splashBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Lottie.asset(AppAnimations.splashAnimation)),
                ],
              ),
            ),
            Text(
              "I'm Bored...",
              style: AppTypography.textLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  splashDelay(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 12));
    Navigator.of(context).pushReplacementNamed('/home');
  }
}
