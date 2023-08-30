// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../app_export.dart';

class CurrentLocale {
  static Locale locale = Localized.supportedLocales.first;
  static Localized localizations = lookupLocalized(locale);
  static Localized get _message => localizations;
}

Localized l10ns = CurrentLocale._message;
