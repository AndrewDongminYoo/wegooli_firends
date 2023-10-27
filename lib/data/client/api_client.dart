// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_connect.dart';
import 'package:get/utils.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/data/auth/api_key_auth.dart';
import '/data/auth/basic_auth.dart';
import '/data/auth/bearer_auth.dart';
import '/data/auth/oauth.dart';

final baseURL = dotenv.get('BASE_URL');

class ApiClient extends GetHttpClient {
  /// 적절한 기본 URL, 타임아웃, 인증 인터셉터로 [Dio] 인스턴스를 준비합니다.
  /// 이렇게 구성된 [Dio]는 [ApiClient]에서 앱에 대한 네트워크 호출을 수행하는 데 사용됩니다.
  /// 인터셉터를 통해 각 요청에 대한 토큰 및 API 키와 같은 인증 세부 정보를 설정할 수 있습니다.
  ApiClient({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? baseURL,
              connectTimeout: 5000.milliseconds,
              receiveTimeout: 5000.milliseconds,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  // ignore: prefer_constructors_over_static_methods
  static ApiClient get instance => GetIt.I.isRegistered<ApiClient>()
      ? GetIt.I.get<ApiClient>()
      : GetIt.I.registerSingleton(ApiClient());

  @override
  String get baseUrl => baseURL;
  final Dio dio;

  void setOAuthToken(String name, String token) {
    if (dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (dio.interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }
}
