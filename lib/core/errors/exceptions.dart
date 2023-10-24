// 🌎 Project imports:
import '/routes/app_router.dart';
import '/widgets/information_dialog.dart';

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

class NoInternetException implements Exception {
  NoInternetException([String message = 'NoInternetException Occurred']) {
    AppRouter.showSnackbar(message: message);
    _message = message;
  }

  String? _message;

  @override
  String toString() {
    final message = _message;
    return 'Exception: $message';
  }
}

class CustomException implements Exception {
  CustomException([this.message]);
  final dynamic message;

  @override
  String toString() {
    final Object? message = this.message;
    if (message == null) {
      return 'Exception';
    }
    return 'Exception: $message';
  }
}

class AuthFailureException implements Exception {
  AuthFailureException([this.message = '로그인 정보가 올바르지 않습니다.'])
      : super(
        // '사용자가 인증되지 않았습니다. 회원가입이나 로그인이 필요합니다.',
        // '사용자ID가 없습니다. 앱 재실행 후 다시 로그인 해보세요.',
        ) {
    AppRouter.showDialog(
      builder: (_) => const InformationalDialog(
        information: '로그인 후 사용해주세요.',
      ),
    );
  }

  final dynamic message;
}
