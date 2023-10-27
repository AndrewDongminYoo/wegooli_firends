// 📦 Package imports:
import 'package:intl/intl.dart';

String formatLabel(LabelFormatter formatter, double value) {
  if (formatter.numberFormat != null) {
    return formatter.numberFormat!(value);
  }
  return formatter.defaultFormat.format(value);
}

class LabelFormatter {
  const LabelFormatter({
    this.numberFormat,
  });

  final String Function(double)? numberFormat;
  NumberFormat get defaultFormat => NumberFormat()..significantDigits = 2;
}
