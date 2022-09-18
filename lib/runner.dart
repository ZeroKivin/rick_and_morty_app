import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rick_and_morty_app/internal/app.dart';
import 'package:rick_and_morty_app/internal/di/app_dependencies.dart';
import 'package:rick_and_morty_app/util/logger/logger.dart';

/// App launch.
Future<void> run() async {
  /// It must be called so that the orientation does not fall.
  WidgetsFlutterBinding.ensureInitialized();

  /// Fix orientation.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Initialized localization.
  await EasyLocalization.ensureInitialized();

  _runApp();
}

void _runApp() {
  runZonedGuarded<Future<void>>(
    () async {
      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ru')],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          child: const AppDependencies(
            app: App(),
          ),
        ),
      );
    },
    (exception, stack) {
      logger.e(exception);
    },
  );
}
