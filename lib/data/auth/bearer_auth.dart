// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/lib.dart';

class BearerAuthInterceptor extends AuthInterceptor {
  final Map<String, String> tokens = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final authInfo = getAuthInfo(options,
        (secure) => secure['type'] == 'http' && secure['scheme'] == 'bearer');
    for (final info in authInfo) {
      final token = tokens[info['name']];
      if (token != null) {
        options.headers['Authorization'] = 'Bearer ${token}';
        break;
        /// TODO: 토큰이 존재하지 않으면..?
      }
    }
    super.onRequest(options, handler);
  }
}
