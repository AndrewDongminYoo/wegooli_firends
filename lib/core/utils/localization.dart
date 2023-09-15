// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CurrentLocale {
  static Locale locale = Localized.supportedLocales.first;
  static Localized get _message => lookupLocalized(locale);
}

Localized l10ns = CurrentLocale._message;
