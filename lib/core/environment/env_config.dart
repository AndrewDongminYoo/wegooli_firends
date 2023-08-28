// 🌎 Project imports:
import 'base_env_config.dart';
import 'open_api_config.dart';

enum Environment { openApiEnv }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) {
    config = _getConfig(environment ?? null);
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.openApiEnv:
        return OpenApiConfig();
      default:
        return OpenApiConfig();
    }
  }
}
