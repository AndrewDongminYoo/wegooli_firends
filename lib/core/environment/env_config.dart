// 🌎 Project imports:
import 'base_env_config.dart';
import 'open_api_config.dart';

enum Environment { openAPIDefinition }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) {
    config = _getConfig(environment ?? null);
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.openAPIDefinition:
        return OpenAPIConfig();
      default:
        return OpenAPIConfig();
    }
  }
}
