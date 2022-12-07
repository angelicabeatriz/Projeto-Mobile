import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'routes/app_router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        onGenerateRoute: AppRouter.getRoute,
        initialRoute: '/',
        title: "Bored App",
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
