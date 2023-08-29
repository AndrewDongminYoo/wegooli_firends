// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/data/auth/auth.dart';

class BearerAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final authInfo = getAuthInfo(options, (secure) => secure['type'] == 'http' && secure['scheme'] == 'bearer');
    for (final info in authInfo) {
      final token = tokens[info['name']];
      if (!info.containsKey('name')) {
        continue;
      } else {
      if (token != null) {
        options.headers['Authorization'] = 'Bearer ${token}';
        break;
        } else {
          String value = info['name'] as String;
          tokens.addAll({value: value});
          // print('tokens : $tokens \n');
          options.headers['Authorization'] = 'Bearer ${info['name']}';
        }
      }
    }
    super.onRequest(options, handler);
  }
}
