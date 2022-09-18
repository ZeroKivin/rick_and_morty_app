// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    DebugRoute.name: (routeData) {
      final args = routeData.argsAs<DebugRouteArgs>(
          orElse: () => const DebugRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: DebugScreen(key: args.key, wmFactory: args.wmFactory));
    },
    CharacterTab.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    CharacterListRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterListRouteArgs>(
          orElse: () => const CharacterListRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CharacterListScreen(key: args.key, wmFactory: args.wmFactory));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeScreenRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'character-list',
              fullMatch: true),
          RouteConfig(CharacterTab.name,
              path: 'character-list',
              parent: HomeScreenRoute.name,
              children: [
                RouteConfig(CharacterListRoute.name,
                    path: '', parent: CharacterTab.name)
              ])
        ]),
        RouteConfig(DebugRoute.name, path: '/debug')
      ];
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [DebugScreen]
class DebugRoute extends PageRouteInfo<DebugRouteArgs> {
  DebugRoute(
      {Key? key,
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
              BuildContext)
          wmFactory = debugScreenWidgetModelFactory})
      : super(DebugRoute.name,
            path: '/debug',
            args: DebugRouteArgs(key: key, wmFactory: wmFactory));

  static const String name = 'DebugRoute';
}

class DebugRouteArgs {
  const DebugRouteArgs(
      {this.key, this.wmFactory = debugScreenWidgetModelFactory});

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'DebugRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class CharacterTab extends PageRouteInfo<void> {
  const CharacterTab({List<PageRouteInfo>? children})
      : super(CharacterTab.name,
            path: 'character-list', initialChildren: children);

  static const String name = 'CharacterTab';
}

/// generated route for
/// [CharacterListScreen]
class CharacterListRoute extends PageRouteInfo<CharacterListRouteArgs> {
  CharacterListRoute(
      {Key? key,
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
              BuildContext)
          wmFactory = characterListScreenWidgetModelFactory})
      : super(CharacterListRoute.name,
            path: '',
            args: CharacterListRouteArgs(key: key, wmFactory: wmFactory));

  static const String name = 'CharacterListRoute';
}

class CharacterListRouteArgs {
  const CharacterListRouteArgs(
      {this.key, this.wmFactory = characterListScreenWidgetModelFactory});

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CharacterListRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
