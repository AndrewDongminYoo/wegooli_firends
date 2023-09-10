class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

/// can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  NoInternetException([String message = 'NoInternetException Occurred']) {
    _message = message;
  }
  late String _message;

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
