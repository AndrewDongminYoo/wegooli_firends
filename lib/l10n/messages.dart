// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/l10n/ko_KR/ko_KR_translations.dart';

class LocaleMessages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'ko_KR': koKR};
}
