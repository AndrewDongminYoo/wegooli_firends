// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'app_localizations.dart';

class Localized {
  static Locale locale = WidgetsBinding.instance.platformDispatcher.locale;
  static AppLocalizations localizations = lookupAppLocalizations(locale);
  static AppLocalizations get message => localizations;
}
