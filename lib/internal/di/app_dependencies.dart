import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_app/feature/debug/screens/debug_screen/debug_screen_export.dart';
import 'package:rick_and_morty_app/internal/app.dart';
import 'package:rick_and_morty_app/internal/di/injector.dart';
import 'package:rick_and_morty_app/navigation/app_router.dart';

class AppDependencies extends StatefulWidget {
  const AppDependencies({
    required this.app,
    Key? key,
  }) : super(key: key);

  final App app;

  @override
  State<AppDependencies> createState() => _AppDependenciesState();
}

class _AppDependenciesState extends State<AppDependencies> {
  final Injector _injector = Injector();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppRouter>(
          create: (_) => AppRouter(),
        ),
        Provider<GlobalKey<ScaffoldMessengerState>>(
          create: (_) => GlobalKey<ScaffoldMessengerState>(),
        ),
        Provider<DebugScreenModel>.value(
          value: _injector.container.resolve(),
        ),
      ],
      child: widget.app,
    );
  }
}
