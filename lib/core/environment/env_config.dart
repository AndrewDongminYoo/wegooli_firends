import 'base_env_config.dart';
import 'wegoolifriends_env_config.dart';

enum Environment { wegooliFriends }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) {
    config = _getConfig(environment ?? null);
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.wegooliFriends:
        return WegooliFriendsEnvConfig();
      default:
        return WegooliFriendsEnvConfig();
    }
  }
}
