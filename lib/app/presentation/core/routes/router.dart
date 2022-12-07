import 'package:auto_route/auto_route.dart';
import 'package:bored/app/presentation/features/home/home_page.dart';
import 'package:bored/app/presentation/features/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      path: "/",
      initial: true,
    ),
    CustomRoute(
        page: HomePage,
        path: "/home",
        transitionsBuilder: TransitionsBuilders.slideRight,
        durationInMilliseconds: 500),
  ],
)
// extend the generated private router
class $AppRouter {}
