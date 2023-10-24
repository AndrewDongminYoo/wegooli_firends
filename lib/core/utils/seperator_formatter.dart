// 🐦 Flutter imports:
import 'package:flutter/services.dart';

/// 특정 수의 문자 뒤에 구분 문자를 포함하도록 텍스트 입력 서식을 지정합니다.
///
/// 제공된 [sample] 포맷에 따라 지정된 수의 문자가 입력된 후 하이픈과 같은 구분 문자를 삽입하도록 [TextInputFormatter]를 확장합니다.
class SeperateTextFormatter extends TextInputFormatter {
  const SeperateTextFormatter({
    required this.sample,
    required this.separator,
  });
  final String sample;
  final String separator;

  /// 이 메서드는 사용자가 입력하는 일정 수의 문자 뒤에 구분 문자를 삽입하여 텍스트 입력의 서식을 지정합니다.
  /// 이 메서드는 [oldValue]와 [newValue]이라는 두 개의 [TextEditingValue] 객체를 받습니다.
  /// [oldValue]는 텍스트 입력의 이전 상태이고, [newValue]은 사용자가 텍스트를 더 입력한 후의 새로운 상태입니다.
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    final oldText = oldValue.text;

    /// 새 텍스트 길이와 이전 텍스트 길이를 비교합니다. 새 텍스트가 더 짧으면 변경되지 않은 새 값을 반환합니다.
    if (newText.isEmpty || newText.length < oldText.length) {
      return newValue;
    }

    /// 새 텍스트가 더 길면 길이가 샘플 길이를 초과하는지 확인합니다. 그렇다면 이전 값을 반환하고 더 이상의 입력을 차단합니다.
    if (newText.length > oldText.length) {
      if (newText.length > sample.length) {
        return oldValue;
      }

      /// 새 길이가 샘플 길이보다 짧으면 샘플을 기준으로 이 길이에 구분 기호를 삽입해야 하는지 확인합니다.
      if (newText.length < sample.length &&
          sample[newText.length] == separator) {
        /// 만약 그렇다면 새 텍스트 뒤에 구성된 구분 문자를 삽입하고 이 형식의 텍스트가 포함된 새로운 [TextEditingValue]를 반환합니다.
        /// 이렇게 하면 입력된 4자리 숫자 뒤에 하이픈을 삽입하는 등 사용자가 입력한 텍스트가 특정 서식 패턴과 일치하도록 할 수 있습니다.
        /// 이 메서드는 미리 정의된 샘플과 구분자를 사용하여 사용자가 텍스트를 입력할 때 삽입할 구분 문자와 시기를 결정합니다.
        final text = '$newText$separator';
        return TextEditingValue(
          text: text,
          selection: TextSelection.collapsed(offset: text.length),
        );
      }
    }
    return newValue;
  }
}
