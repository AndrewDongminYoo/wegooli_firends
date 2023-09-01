// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class BasicAuthInfo {
  final String username;
  final String password;

  const BasicAuthInfo(this.username, this.password);
}

class BasicAuthInterceptor extends AuthInterceptor {
  final Map<String, BasicAuthInfo> authInfo = {};

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final metadataAuthInfo = getAuthInfo(
        options,
        (secure) =>
            (secure['type'] == 'http' && secure['scheme'] == 'basic') ||
            secure['type'] == 'basic');
    for (final info in metadataAuthInfo) {
      final authName = info['name'] as String;
      final basicAuthInfo = authInfo[authName];
      if (basicAuthInfo != null) {
        final basicAuth =
            'Basic ${base64Encode(utf8.encode('${basicAuthInfo.username}:${basicAuthInfo.password}'))}';
        options.headers['Authorization'] = basicAuth;
        break;
      }
    }
    super.onRequest(options, handler);
  }
}
