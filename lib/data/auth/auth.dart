// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';

abstract class AuthInterceptor extends Interceptor {
  /// 주어진 유형에 대한 주어진 경로의 인증 정보를 가져옵니다.
  /// 인증 데이터에 유형이 없거나 경로에 인증이 필요하지 않은 경우 빈 목록을 반환할 수 있습니다.
  List<Map<String, String>> getAuthInfo(
      RequestOptions route, bool Function(Map<String, String> secure) handles) {
    if (route.extra.containsKey('secure')) {
      final auth = route.extra['secure'] as List<Map<String, String>>;
      return auth.whereTo((secure) => handles(secure));
    }
    return [];
  }
}
