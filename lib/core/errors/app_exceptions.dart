/// AppHttpClient 던지는 모든 예외에 대한 기본 예외.
/// 이 인스턴스를 생성하여 `unknown` 오류 예외를 생성할 수 있습니다.
///
/// ```
///   ┌──────────────────────────┐
///   │  AppHttpClientException  │
///   └──────────────────────────┘
///                 ▲
///                 │
///   ┌──────────────────────────┐
///   │   AppNetworkException    │
///   └──────────────────────────┘
///                 ▲
///                 │
/// ┌───────────────────────────────┐
/// │  AppNetworkResponseException  │
/// └───────────────────────────────┘
/// ```
class AppHttpClientException<OriginalException extends Exception>
    implements Exception {
  /// 지정된 기본 [Exception]를 사용하여 새 애플리케이션 http 클라이언트 예외를 만듦.
  AppHttpClientException({required this.exception});

  /// 포착된 예외.
  final OriginalException exception;
}

/// 네트워크 예외의 이유.
enum AppNetworkExceptionReason {
  /// 요청 취소.
  canceled,

  /// 시간 초과 오류.
  timedOut,

  /// 응답 오류.
  responseError
}

/// 네트워크 오류.
class AppNetworkException<OriginalException extends Exception>
    extends AppHttpClientException<OriginalException> {
  /// 네트워크 예외를 만듦.
  AppNetworkException({
    required this.reason,
    required OriginalException exception,
  }) : super(exception: exception);

  /// 네트워크 예외 발생한 이유.
  final AppNetworkExceptionReason reason;
}

/// 응답 예외.
class AppNetworkResponseException<OriginalException extends Exception, DataType>
    extends AppNetworkException<OriginalException> {
  /// 지정된 [statusCode], 원본 [Exception] 및 응답 [data]를 사용하여 새 응답 예외를 만듦.
  AppNetworkResponseException({
    required OriginalException exception,
    this.statusCode,
    this.data,
  }) : super(
          reason: AppNetworkExceptionReason.responseError,
          exception: exception,
        );

  /// 응답 데이터(있는 경우).
  final DataType? data;

  /// HTTP 상태 코드(있는 경우).
  final int? statusCode;

  /// 응답에 데이터 포함되어 있으면 true.
  bool get hasData => data != null;

  /// 상태 코드 null이면 false를 반환합니다.
  /// 그렇지 않으면, 주어진 클로저가 [evaluator] 주어진 http 상태코드의 유효성을 검사하도록 합니다.
  ///
  /// 사용법:
  /// ```
  /// final isValid = responseException.validateStatusCode(
  ///   (statusCode) => statusCode >= 200 && statusCode < 300,
  /// );
  /// ```
  bool validateStatusCode(bool Function(int statusCode) evaluator) {
    final statusCode = this.statusCode;
    if (statusCode == null) return false;
    return evaluator(statusCode);
  }
}
