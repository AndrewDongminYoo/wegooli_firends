// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/core/utils/pref_utils.dart';
import '/data/auth/auth.dart';

class BearerAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    /// [{type: 'http', scheme: 'bearer', name: 'jwtAuth'}];
    final authInfo = getAuthInfo(options,
        (secure) => secure['type'] == 'http' && secure['scheme'] == 'bearer');
    String? token;
    for (final info in authInfo) {
      final _token = tokens[info['name']];
      if (_token != null) {
        token = _token;
        PrefUtils.setToken(token);
        options.headers['Authorization'] = 'Bearer $token';
        break;
      }
    }
    if (token == null) {
      token = PrefUtils.getToken();
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
