import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_app/feature/character/data/repository/character_repository.dart';
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
        Provider<ErrorHandler>.value(
          value: _injector.resolve<ErrorHandler>(),
        ),
        Provider<ThemeWrapper>.value(
          value: _injector.resolve<ThemeWrapper>(),
        ),
        Provider<ICharacterRepository>.value(
          value: _injector.resolve<ICharacterRepository>(),
        ),
      ],
      child: widget.app,
    );
  }
}
