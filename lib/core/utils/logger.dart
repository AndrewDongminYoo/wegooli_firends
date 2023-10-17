// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:logger/logger.dart';

final Logger logger = Logger(printer: logPrinter, filter: logFilter);

final logPrinter = PrettyPrinter(
  lineLength: 80,
  stackTraceBeginIndex: 2,
  methodCount: 1,
  errorMethodCount: 4,
  noBoxingByDefault: true,
  excludeBox: const {
    Level.verbose: false,
  },
);

final logFilter = DebugLogFilter();

class DebugLogFilter extends LogFilter {
  final minimum = kDebugMode ? Level.debug : Level.warning;

  @override
  bool shouldLog(LogEvent event) {
    /// 출력 레벨이 만족하는지 확인합니다.
    /// [verbose] : 리소스 관리 위해 지나치게 자세한 로그
    /// [debug] : 디버그 포인트 위한 로그
    /// [info] : 정상 작동 중 정보성 로그
    /// [warning] : 경고 발생 시 로그
    /// [error] : 오류 발생 시 로그
    /// [wtf] : 심각한 장애 상황에서만 로그
    /// [nothing] : 아무것도 로그하지 않음
    if (event.level.index >= minimum.index) {
      return true;
    } else {
      return false;
    }
  }
}
