class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

/// can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    _message = message;
  }

  @override
  String toString() {
    String? message = _message;
    return 'Exception: $message';
  }
}

class CustomException implements Exception {
  final dynamic message;

  CustomException([this.message]);

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return 'Exception';
    return 'Exception: $message';
  }
}
