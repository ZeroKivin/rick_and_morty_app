import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen_export.dart';
import 'package:rick_and_morty_app/feature/debug/screens/debug_screen/debug_screen_export.dart';
import 'package:rick_and_morty_app/feature/home/home_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      path: '/',
      children: [
        AutoRoute(
          path: 'character-list',
          page: EmptyRouterPage,
          name: 'CharacterTab',
          initial: true,
          children: [
            AutoRoute(
              page: CharacterListScreen,
              name: 'CharacterListRoute',
              path: '',
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      page: DebugScreen,
      name: 'DebugRoute',
      path: '/debug',
    ),
  ],
)
// ignore: avoid-dynamic
class AppRouter extends _$AppRouter {}
