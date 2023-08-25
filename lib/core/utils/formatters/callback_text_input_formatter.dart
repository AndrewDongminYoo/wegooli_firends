// 🎯 Dart imports:
import 'dart:math';

// 🐦 Flutter imports:
import 'package:flutter/services.dart';

/// [RegExp]를 사용하여 입력을 필터링할 수 있는 [FilteringTextInputFormatter]입니다.
/// 입력이 유효한지 여부를 나타내는 부울과 함께 [FilteringTextInputFormatter.inputtingCallback]이 호출됩니다.
class CallbackTextInputFormatter extends FilteringTextInputFormatter {
  CallbackTextInputFormatter(
    super.filterPattern, {
    required super.allow,
    super.replacementString = '',
    this.inputtingCallback,
  });

  void Function(bool valid)? inputtingCallback;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    _callback(newValue);
    return super.formatEditUpdate(oldValue, newValue);
  }

  void _callback(TextEditingValue newValue) {
    if (inputtingCallback == null) {
      return;
    }
    bool valid = true;
    if (newValue.text.isNotEmpty) {
      final Iterable<Match> matches = filterPattern.allMatches(newValue.text);
      if (allow) {
        int totalLength = 0;
        for (var element in matches) {
          totalLength += max(element.end - element.start, 1);
        }
        valid = totalLength == newValue.text.length;
      } else {
        valid = matches.isEmpty;
      }
    }
    inputtingCallback!(valid);
  }

  static CallbackTextInputFormatter businessNumber({
    required void Function(bool valid) inputtingCallback,
  }) {
    return CallbackTextInputFormatter(
      RegExp(r'[0-9]'),
      allow: true,
      inputtingCallback: inputtingCallback,
    );
  }

  static CallbackTextInputFormatter name({
    required void Function(bool valid) inputtingCallback,
  }) {
    return CallbackTextInputFormatter(
      RegExp(r"""[₩0-9~!@#\$%^&*()_+`\-={}|\[\]\:";'<>?,./]"""),
      allow: false,
      inputtingCallback: inputtingCallback,
    );
  }

  static CallbackTextInputFormatter phone({
    required void Function(bool valid) inputtingCallback,
  }) {
    return CallbackTextInputFormatter(
      RegExp(r'[0-9\-]'),
      allow: true,
      inputtingCallback: inputtingCallback,
    );
  }
}
