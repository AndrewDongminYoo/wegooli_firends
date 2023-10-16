import 'package:wegooli_friends_app/core/environment/base_env_config.dart';
import 'package:wegooli_friends_app/core/environment/wegoolifriends_env_config.dart';

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
