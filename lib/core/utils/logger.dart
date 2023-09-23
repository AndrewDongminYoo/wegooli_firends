// ignore_for_file: depend_on_referenced_packages

// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:logging/logging.dart';

// 🌎 Project imports:
import 'ansi_colors.dart';

/// 이 클래스는 로깅에 다채로운 색상 기능을 제공합니다.
class LoggerColorful {
  /// Constructor
  LoggerColorful(String name) {
    logger = Logger(name);
  }

  /// 각 레벨에 연관된 색상을 정의합니다.
  /// 기본 설정에 따라 재정의할 수 있습니다.
  ///
  /// 기본적으로 [FINEST]에는 색상이 할당되어 있지 않으므로 무지개 색상을 사용하여 표시됩니다.
  /// 무지개를 제거하려면 [LoggerColorful.colorLevel]에서 [Level.FINEST]에 색상을 할당합니다.
  Map<Level, AnsiColor> colorLevel = {
    Level.SHOUT: AnsiColor.highIntensityBackgroundRed,
    Level.SEVERE: AnsiColor.boldRed,
    Level.WARNING: AnsiColor.boldYellow,
    Level.INFO: AnsiColor.blue,
    Level.CONFIG: AnsiColor.purple,
    Level.FINE: AnsiColor.green,
    Level.FINER: AnsiColor.boldGreen,
    // Level.FINEST: AnsiColor.highIntensityBackgroundGreen,
  };

  /// Logger 클래스에는 팩토리 생성자만 있고 생성 생성자가 필요하므로 확장할 수 없으므로 [Logger] 어트리뷰트를 제공하세요.
  late Logger logger;

  /// 레벨 [Level.SHOUT]에 메시지를 기록합니다.
  void shout(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.SHOUT;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.SEVERE]에 메시지를 기록합니다.
  void error(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.SEVERE;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.WARNING]에 메시지를 기록합니다.
  void warn(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.WARNING;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.INFO]에 메시지를 기록합니다.
  void info(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.INFO;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.CONFIG]에 메시지를 기록합니다.
  void config(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.CONFIG;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.FINE]에 메시지를 기록합니다.
  void ok(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.FINE;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.FINER]에 메시지를 기록합니다.
  void pass(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.FINER;
    final color = colorLevel[level]!;
    final message = _colorize(msg.toString(), color);
    log(level, message, error, stackTrace);
  }

  /// 레벨 [Level.FINEST]에 메시지를 기록합니다.
  ///
  /// 기본적으로 [Level.FINEST]에는 색상이 지정되어 있지 않으므로 무지개 색상을 사용하여 표시됩니다.
  /// 무지개를 제거하려면 [LoggerColorful.colorLevel]에서 [Level.FINEST]에 색상을 지정합니다.
  void congrats(Object? msg, [Object? error, StackTrace? stackTrace]) {
    const level = Level.FINEST;
    var message = msg.toString();
    if (colorLevel.containsKey(Level.FINEST)) {
      message = _colorize(msg.toString(), colorLevel[level]!);
    } else if (msg is String) {
      message = _rainbow(msg);
    }
    log(level, message, error, stackTrace);
  }

  /// 임의의 [Level]에 메시지를 기록합니다.
  ///
  /// [message]가 [String]인 경우 색상을 지정합니다.
  ///
  /// 없으면 상위 [Logger.log] 함수를 적용합니다.
  void log(Level logLevel, Object? msg,
      [Object? error, StackTrace? stackTrace, Zone? zone]) {
    logger.log(logLevel, msg, [error, stackTrace, zone]);
  }

  /// [AnsiColor]에 따라 색을 입힌 [String]을 반환합니다.
  String _colorize(String message, AnsiColor color) {
    return '$color$message${AnsiColor.reset}';
  }

  /// 무지개색 [AnsiColor]로 [String]을 반환합니다.
  String _rainbow(String text) {
    final rainbow = [
      AnsiColor.boldRed,
      AnsiColor.boldGreen,
      AnsiColor.boldYellow,
      AnsiColor.boldBlue,
      AnsiColor.boldPurple,
      AnsiColor.boldCyan,
      AnsiColor.boldWhite
    ];
    final rainbowText = StringBuffer();
    for (var i = 0; i < text.length; i++) {
      final char = text[i];
      final color = rainbow[i % rainbow.length];
      rainbowText.write('$color$char');
    }
    rainbowText.write(AnsiColor.reset);
    return rainbowText.toString();
  }
}
