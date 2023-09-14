/// Logger 클래스는 메시지 로깅에 사용됩니다.
class Logger {
  LogMode logMode = LogMode.debug;

  /// 로그 기능은 선택적 스택 추적과 함께 동적 데이터를 인쇄하는 데 사용됩니다.
  ///
  /// @param [dynamic] data - 동적 유형이므로 모든 유형의 데이터를 허용할 수 있습니다. 기록하려는 데이터를 전달하는 데 사용됩니다.
  /// @param [StackTrace] stackTrace - 데이터를 로깅할 때 현재 호출 스택에 대한 정보를 제공하는 데 사용됩니다.
  /// [StackTrace] 개체에는 호출 스택의 프레임을 나타내는 [StackTraceFrame] 개체 목록이 포함되어 있습니다.
  void log(dynamic data, {StackTrace? stackTrace}) {
    if (logMode == LogMode.debug) {
      print('Error: $data$stackTrace');
    }
  }
}

enum LogMode { debug, live }
