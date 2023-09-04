// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

/// 웹용 Flutter에서 문자 간격을 사용하면 성능이 저하될 수 있습니다. (https://github.com/flutter/flutter/issues/51234 참조).
double letterSpacingOrNone(double letterSpacing) =>
    kIsWeb ? 0.0 : letterSpacing;
