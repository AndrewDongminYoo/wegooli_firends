// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/data/auth/auth.dart';

class OAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final authInfo = getAuthInfo(options,
        (secure) => secure['type'] == 'oauth' || secure['type'] == 'oauth2');
    for (final info in authInfo) {
      final token = tokens[info['name']];
      if (token != null) {
        options.headers['Authorization'] = 'Bearer ${token}';
        break;
      }
    }
    super.onRequest(options, handler);
  }
}