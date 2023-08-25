// ignore_for_file: unused_element

// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/services.dart';

/// `Function`의 `extension FunctionExt` 문이 `Function` 클래스에 확장을 생성하고 있습니다.
/// 이렇게 하면 원래 구현을 수정하지 않고도 `Function` 클래스에 새 메서드를 추가할 수 있습니다
///
/// 이 경우 확장 프로그램은 `throttle()`, `throttleWithTimeout()` 및 `debounce()`의 세 가지 새로운 메서드를 추가합니다.
/// 모두 이벤트 핸들러의 실행을 제어하기 위한 목적이지만, `debounce`는 마지막 이벤트를 기준으로 실행을 지연시키고, `throttle`은 일정 시간 간격으로 실행을 제한하는 차이가 있습니다.
/// 이러한 메서드는 `Function` 클래스의 모든 인스턴스에서 호출할 수 있습니다.
extension _FunctionExt on Function {

  /// `Throttle`은 이벤트 핸들러의 실행을 일정 시간 간격(여기서는 500ms) 으로 제한하는 것입니다.
  /// 예를 들어, 스크롤 이벤트를 처리하는 경우, 스크롤 이벤트가 연속적으로 발생할 수 있으므로 이를 throttle로 제어하여 일정 시간 간격으로만 이벤트 핸들러를 실행할 수 있습니다.
  /// 이렇게 함으로써, 많은 이벤트가 발생할 때에도 너무 많은 리소스를 소비하지 않고 이벤트 핸들러를 실행할 수 있습니다.
  VoidCallback throttle() {
    return FunctionProxy(this).throttle;
  }

  /// `Debounce`와 `throttle`은 이벤트 핸들러의 실행을 제어하기 위해 사용되는 기술입니다.
  /// `Throttle` 메소드에 timeout 밀리초 아규먼트를 함께 제공해 실행합니다. 일반 throttle은 500 밀리초를 기준 간격으로 합니다.
  VoidCallback throttleWithTimeout({int? timeout}) {
    return FunctionProxy(this, timeout: timeout).throttleWithTimeout;
  }

  /// `Debounce`는 연속적으로 발생하는 이벤트를 하나로 그룹화하여 실행을 지연시킵니다.
  /// 예를 들어, 사용자가 키보드를 누를 때마다 이벤트 핸들러를 실행하는 경우, debounce를 사용하면 사용자가 마지막 키를 누르고 일정 시간이 지난 후에 이벤트 핸들러가 실행됩니다.
  /// 이렇게 함으로써, 연속적으로 발생하는 이벤트에 의한 불필요한 연산을 방지할 수 있습니다.
  VoidCallback debounce({int? timeout}) {
    return FunctionProxy(this, timeout: timeout).debounce;
  }
}

class FunctionProxy {
  static final Map<String, bool> _funcThrottle = {};
  static final Map<String, Timer> _funcDebounce = {};
  final Function? target;

  final int timeout;

  /// `FunctionProxy` 클래스의 생성자입니다.
  /// `Function?` 유형의 `target`과 `int?` 유형의 `timeout`이라는 두 가지 매개변수.
  /// 라인 `timeout = timeout ?? 500;`은 timeout의 디폴트 값이 500밀리초 임을 나타냅니다.
  FunctionProxy(this.target, {int? timeout}) : timeout = timeout ?? 500;

  /// 스로틀 기능은 특정 작업을 수행할 수 있는 속도를 제한하는 데 사용됩니다.
  void throttle() async {
    String key = hashCode.toString();
    bool enable = _funcThrottle[key] ?? true;
    if (enable) {
      _funcThrottle[key] = false;
      try {
        await target?.call();
      } catch (e) {
        rethrow;
      } finally {
        _funcThrottle.remove(key);
      }
    }
  }

  /// 이 함수는 스로틀 맵에 동일한 해시 코드를 가진 다른 함수가 없는 경우 대상 함수를 실행합니다.
  /// 또한 타임아웃 함수를 스로틀 맵에 추가하여 지정된 타임아웃이 지나면 스로틀 맵에서 제거합니다.
  void throttleWithTimeout() {
    String key = hashCode.toString();
    bool enable = _funcThrottle[key] ?? true;
    if (enable) {
      _funcThrottle[key] = false;
      Timer(Duration(milliseconds: timeout), () {
        _funcThrottle.remove(key);
      });
      target?.call();
    }
  }

  /// 함수를 다시 호출하지 않고 지정된 시간 제한이 경과한 후에만 함수를 호출하는 타이머로 함수를 감싸서 함수를 디바운스합니다.
  /// 버튼을 한 번만 누르면 연속으로 여러 번 호출되는 함수와 같이 함수 호출 속도를 제한하는 경우에 유용합니다.
  /// 이 함수는 제한 시간 내에 여러 번 호출할 수 있지만 제한 시간이 끝날 때만 호출됩니다.
  /// 이 함수는 타이머를 취소하고 함수가 호출되는 것을 방지하기 위해 호출할 수 있는 함수를 반환합니다.
  void debounce() {
    String key = hashCode.toString();
    Timer? timer = _funcDebounce[key];
    timer?.cancel();
    timer = Timer(Duration(milliseconds: timeout), () {
      Timer? t = _funcDebounce.remove(key);
      t?.cancel();
      target?.call();
    });
    _funcDebounce[key] = timer;
  }
}
