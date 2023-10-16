// 🌎 Project imports:
import '/core/environment/app_env_config.dart';
import '/core/environment/base_env_config.dart';

enum Environment { wegooliFriends }

class EnvConfig {
  late BaseEnvConfig config;

  void initConfig({Environment? environment}) {
    config = _getConfig(environment);
  }

  WegooliFriendsEnvConfig _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.wegooliFriends:
        return WegooliFriendsEnvConfig();
      default:
        return WegooliFriendsEnvConfig();
    }
  }
}
