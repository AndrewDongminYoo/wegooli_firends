import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/data/auth/auth.dart';

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
      if (!info.containsKey('name')) {
        continue;
      } else {
        if (token != null) {
          // print('token not null : $token \n');
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

String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}

Map<String, dynamic> parseJwtPayLoad(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }

  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }

  return payloadMap;
}
