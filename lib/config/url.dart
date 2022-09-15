import 'package:rick_and_morty_app/config/app_config.dart';
import 'package:rick_and_morty_app/config/environment/environment.dart';

/// Server urls.
abstract class Url {
  /// Prod proxy url.
  static String get prodProxyUrl => '';

  /// Dev proxy url.
  static String get devProxyUrl => '';

  /// Prod url.
  static String get prodUrl => 'https://rickandmortyapi.com/api';

  /// Dev url.
  static String get devUrl => 'https://rickandmortyapi.com/api';

  /// Base url.
  static String get baseUrl => Environment<AppConfig>.instance().config.url;
}
