# Timer Spec

```dart
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dart.async;

/// 한 번 또는 반복적으로 실행되도록 구성할 수 있는 countdown timer입니다.
///
/// timer는 지정된 duration부터 0까지 countdown합니다.
/// timer가 0에 도달하면 Timer는 지정된 callback function을 호출합니다.
/// periodic Timer를 사용하여 동일한 간격을 반복적으로 countdown합니다.
///
/// 음수 Duration은 0의 Duration과 동일하게 취급됩니다.
/// Duration이 정적으로 0으로 알려진 경우 [run]을 사용하는 것이 좋습니다.
///
/// duration은 상수이거나 다음 예제에서와 같이 계산되는 경우가 많습니다([Duration] 클래스의 곱셈 연산자(*) 활용):
/// ```dart
/// void main() {
///   scheduleTimeout(5 * 1000); // 5 seconds.
/// }
///
/// Timer scheduleTimeout([int milliseconds = 10000]) =>
///     Timer(Duration(milliseconds: milliseconds), handleTimeout);
///
/// void handleTimeout() {  // callback function
///   // Do some work.
/// }
/// ```
/// **참고:** [Timer]를 사용하는 Dart 코드가 자바스크립트로 컴파일되는 경우 브라우저에서 사용할 수 있는 가장 세분화된 단위는 4 milliseconds입니다.
///
/// See also:
/// * [Stopwatch] for measuring elapsed time.
@vmIsolateUnsendable
abstract interface class Timer {
  /// 새 Timer를 생성합니다.
  ///
  /// [callback] function은 지정된 [Duration] 후에 호출됩니다.
  ///
  /// Example:
  /// ```dart
  /// final timer =
  ///     Timer(const Duration(seconds: 5), () => print('Timer finished'));
  /// // Outputs after 5 seconds: "Timer finished".
  /// ```
  factory Timer(Duration duration, void Function() callback) {
    if (Zone.current == Zone.root) {
      // No need to bind the callback. We know that the root's timer will
      // be invoked in the root zone.
      return Zone.current.createTimer(duration, callback);
    }
    return Zone.current
        .createTimer(duration, Zone.current.bindCallbackGuarded(callback));
  }

  /// 새로운 반복 Timer를 생성합니다.
  ///
  /// [callback]은 [cancel] function로 cancel될 때까지 [duration] 간격으로 반복적으로 호출됩니다.
  ///
  /// 정확한 타이밍은 기본 Timer 구현에 따라 다릅니다.
  /// callback은 `duration * n` 시간 동안 `n`회 이상 호출되지 않지만, 두 개의 연속 callback 사이의 시간은 `duration`보다 짧을 수도 있고 길어질 수도 있습니다.
  ///
  /// 구현 시 실제 callback이 지연된 경우에도 이전 callback이 종료된 시점, 이전 callback이 시작된 시점 또는 이전 callback이 예약된 시점 이후에 다음 callback(예: `duration`)을 예약할 수 있습니다.
  ///
  /// [duration]은 음수가 아닌 [Duration]이어야 합니다.
  ///
  /// Example:
  /// ```dart
  /// var counter = 3;
  /// Timer.periodic(const Duration(seconds: 2), (timer) {
  ///   print(timer.tick);
  ///   counter--;
  ///   if (counter == 0) {
  ///     print('Cancel timer');
  ///     timer.cancel();
  ///   }
  /// });
  /// // Outputs:
  /// // 1
  /// // 2
  /// // 3
  /// // "Cancel timer"
  /// ```
  factory Timer.periodic(Duration duration, void callback(Timer timer)) {
    if (Zone.current == Zone.root) {
      // No need to bind the callback. We know that the root's timer will
      // be invoked in the root zone.
      return Zone.current.createPeriodicTimer(duration, callback);
    }
    var boundCallback = Zone.current.bindUnaryCallbackGuarded<Timer>(callback);
    return Zone.current.createPeriodicTimer(duration, boundCallback);
  }

  /// 주어진 [callback]을 가능한 한 빨리 비동기적으로 실행합니다.
  ///
  /// 이 function은 `new Timer(Duration.zero, callback)`와 동일합니다.
  ///
  /// Example:
  /// ```dart
  /// Timer.run(() => print('timer run'));
  /// ```
  static void run(void Function() callback) {
    new Timer(Duration.zero, callback);
  }

  /// Timer를 cancel합니다.
  ///
  /// [Timer]가 cancel되면 Timer에 의해 callback function이 호출되지 않습니다. [Timer]에서 [cancel]를 두 번 이상 호출하는 것은 허용되며, 더 이상 영향을 미치지 않습니다.
  ///
  /// Example:
  /// ```dart
  /// final timer =
  ///     Timer(const Duration(seconds: 5), () => print('Timer finished'));
  /// // Cancel timer, callback never called.
  /// timer.cancel();
  /// ```
  void cancel();

  /// 가장 최근 Timer 이벤트 이전의 Durations 수입니다.
  ///
  /// 이 값은 0에서 시작하여 Timer 이벤트가 발생할 때마다 증가하므로 각 callback은 이전 callback보다 더 큰 값을 보게 됩니다.
  ///
  /// duration이 0이 아닌 periodic Timer가 너무 많이 지연되어 tick이 두 번 이상 발생해야 하는 경우 과거의 마지막 tick을 제외한 모든 tick이 "누락"된 것으로 간주되며 이에 대한 callback이 호출되지 않습니다.
  /// [tick] 횟수는 callback 호출 횟수가 아니라 경과한 Duration의 수를 반영합니다.
  ///
  /// Example:
  /// ```dart
  /// final stopwatch = Stopwatch()..start();
  /// Timer.periodic(const Duration(seconds: 1), (timer) {
  ///   print(timer.tick);
  ///   if (timer.tick == 1) {
  ///     while (stopwatch.elapsedMilliseconds < 4500) {
  ///       // Run uninterrupted for another 3.5 seconds!
  ///       // The latest due tick after that is the 4-second tick.
  ///     }
  ///   } else {
  ///     timer.cancel();
  ///   }
  /// });
  /// // Outputs:
  /// // 1
  /// // 4
  /// ```
  int get tick;

  /// Timer가 아직 활성화되어 있는지 여부를 반환합니다.
  ///
  /// callback이 실행되지 않았고 Timer가 cancel되지 않은 경우 non-periodic Timer가 활성화됩니다.
  ///
  /// periodic timer는 cancel되지 않은 경우 활성 상태입니다.
  bool get isActive;

  external static Timer _createTimer(
      Duration duration, void Function() callback);
  external static Timer _createPeriodicTimer(
      Duration duration, void callback(Timer timer));
}
```
