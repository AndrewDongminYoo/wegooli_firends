// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/l10n/app_localizations.dart';

class CurrentLocale {
  static Locale locale = Localized.supportedLocales.first;
  static Localized get _message => lookupLocalized(locale);
}

Localized l10ns = CurrentLocale._message;

extension AppLocalizationsX on BuildContext {
  Localized get l10ns => Localized.of(this);
}
