// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/core/utils/pref_utils.dart';
import '/data/auth/auth_interceptor.dart';

class BearerAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final authInfo = getAuthInfo(options,
        (secure) => secure['type'] == 'http' && secure['scheme'] == 'bearer');
    String? token;
    for (final info in authInfo) {
      token = tokens[info['name']];
      if (token != null) {
        PrefUtils.storage.setToken(token!);
        options.headers['Authorization'] = 'Bearer ${token}';
        break;
      }
    }
    if (token == null) {
      token = PrefUtils.storage.getToken();
      options.headers['Authorization'] = 'Bearer ${token}';
    }
    super.onRequest(options, handler);
  }
}
