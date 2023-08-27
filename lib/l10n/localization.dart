import 'package:flutter/material.dart';

import 'app_localizations.dart';

class Localized {
  static Locale locale = WidgetsBinding.instance.platformDispatcher.locale;
  static AppLocalizations localizations = lookupAppLocalizations(locale);
  static AppLocalizations get message => localizations;
}
