// 🐦 Flutter imports:
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  String? locale;
  String? name;
  int? decimalDigits;

  CurrencyInputFormatter({
    this.locale,
    this.name,
    this.decimalDigits,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String newText = format(
      newValue.text,
      locale: locale,
      name: name,
      decimalDigits: decimalDigits,
    );
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  static String format(
    String value, {
    String? locale,
    String? name,
    int? decimalDigits,
  }) {
    double? doubleValue = double.tryParse(value);
    if (doubleValue == null) {
      return value;
    }
    final formatter = NumberFormat.simpleCurrency(
        locale: locale ?? "ko-KR",
        name: name,
        decimalDigits: decimalDigits ?? 0);
    String newText = formatter.format(doubleValue);
    return newText;
  }

  static String unformat(
    String value, {
    String? locale,
    String? name,
    int? decimalDigits,
  }) {
    if (value.isEmpty) {
      return value;
    }
    final formatter = NumberFormat.simpleCurrency(
        locale: locale ?? "ko-KR",
        name: name,
        decimalDigits: decimalDigits ?? 0);
    String result = value
        .replaceAll(formatter.currencySymbol, '')
        .replaceAll(formatter.negativePrefix, '')
        .replaceAll(formatter.positivePrefix, '')
        .replaceAll(formatter.negativeSuffix, '')
        .replaceAll(formatter.positiveSuffix, '')
        .replaceAll(',', '');
    return result;
  }
}
