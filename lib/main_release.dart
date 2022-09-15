import 'package:rick_and_morty_app/config/app_config.dart';
import 'package:rick_and_morty_app/config/debug_options.dart';
import 'package:rick_and_morty_app/config/environment/build_type.dart';
import 'package:rick_and_morty_app/config/environment/environment.dart';
import 'package:rick_and_morty_app/config/url.dart';
import 'package:rick_and_morty_app/runner.dart';

/// Main entry point of app.
void main() {
  Environment.init(
    buildType: BuildType.release,
    config: AppConfig(
      url: Url.prodUrl,
      proxyUrl: Url.prodProxyUrl,
      debugOptions: DebugOptions(),
    ),
  );

  run();
}
