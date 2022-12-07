import 'package:flutter/material.dart';

import '../../features/details/details_page.dart';
import '../../features/home/home_page.dart';
import '../../features/splash/splash_page.dart';

class AppRouter {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/details':
        return MaterialPageRoute(builder: (_) => const DetailsPage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Not found'),
        ),
        body: const Center(
          child: Text('Not found'),
        ),
      ),
    );
  }
}
