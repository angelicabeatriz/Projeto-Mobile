import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app/presentation/core/app_widget.dart';
import 'env.dart';

void main() async {
  await Env.init();
  await SentryFlutter.init(
    (options) {
      options.dsn = Env.sentryUrl;
    },
  );

  runApp(AppWidget());
}

