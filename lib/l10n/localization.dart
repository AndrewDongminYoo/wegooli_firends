// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'app_localizations.dart';

class Localized {
  static Locale locale = AppLocalizations.supportedLocales.first;
  static AppLocalizations localizations = lookupAppLocalizations(locale);
  static AppLocalizations get _message => localizations;
}

AppLocalizations l10ns = Localized._message;
