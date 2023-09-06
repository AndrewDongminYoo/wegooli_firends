// 🌎 Project imports:
import '/core/app_export.dart';

enum Environment { openApiEnv }

class EnvConfig {
  late BaseEnvConfig config;

  void initConfig({Environment? environment}) {
    config = _getConfig(environment);
  }

  BaseEnvConfig _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.openApiEnv:
        return OpenApiConfig();
      default:
        return OpenApiConfig();
    }
  }
}
