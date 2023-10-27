// ignore_for_file: avoid_redundant_argument_values

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:logger/logger.dart';

final logger = Logger(printer: logPrinter, filter: logFilter);

final logPrinter = PrettyPrinter(
  /// 로그 줄에 이모티콘을 접두사로 붙일지 여부.
  printEmojis: true,

  /// 출력 색상에 안시 컬러를 사용할지 여부입니다.
  colors: true,

  /// [LogEvent.time] 프린트 여부.
  printTime: true,

  /// 구분선의 길이를 제어합니다.
  lineLength: 80,

  /// 스택 트레이스를 시작해야 하는 인덱스입니다.
  /// 예를 들어 Logger가 다른 클래스에 래핑되어 있고 이러한 래핑된 호출을 스택 트레이스에서 제거하려는 경우 유용할 수 있습니다.
  stackTraceBeginIndex: 2,

  /// 스택 트레이스가 제공되지 않은 경우에 생성할 스택 트레이스의 메서드 수를 제어합니다.
  /// 스택 트레이스를 생성하지 않으려면 `0`으로 설정합니다.
  methodCount: 1,

  /// 제공된 스택 트레이스의 메서드 수를 제어합니다.
  /// 오류 매개변수를 통해 스택 트레이스가 제공된 경우에 사용됩니다.
  /// 제공된 스택 트레이스를 프린트하지 않으려면 `0`으로 설정합니다.
  errorMethodCount: 4,

  /// [excludeBox]의 암시적 'bool'이 기본적으로 'true' 또는 'false'인지 여부.
  /// 기본적으로 모든 레벨이 '박스'로 설정되어 있으면 모든 레벨에 대한 기본값이 박스 없음으로 바뀝니다.
  /// 특정 레벨에 대한 개별 박싱은 [excludeBox]에서 수동으로 `false`로 설정하여 계속 켤 수 있습니다.
  noBoxingByDefault: true,

  /// 스택 트레이스에서 제외되는 커스텀 경로 목록입니다.
  /// 예를 들어, 이 로거로 리디렉션하는 `MyLog` 유틸리티를 제외할 수 있습니다:
  excludePaths: [],

  /// 서로 다른 [레벨]의 아스키 '박싱'을 제어합니다.
  /// 기본적으로 모든 레벨은 '박싱'되며, 특정 레벨의 '박싱'을 방지하려면 맵에 `true`로 포함시킵니다.
  excludeBox: const {
    Level.verbose: false,
  },
);

final logFilter = DevelopmentFilter();

/// 로그 메시지의 추상 필터입니다.
/// 자체 `LogFilter` 클래스를 구현하거나 [DevelopmentFilter]를 사용할 수 있습니다.
/// 모든 구현은 [Logger.level]을 고려해야 합니다.
///
/// See:
///  [DevelopmentFilter]
class DebugLogFilter extends LogFilter {
  final minimum = kDebugMode ? Level.debug : Level.warning;

  /// 새 로그 메시지가 전송될 때마다 호출되어 인쇄할지 여부를 결정합니다.
  /// 메시지를 기록해야 할 경우 `true`를 반환합니다.
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
