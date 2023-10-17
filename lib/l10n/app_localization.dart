// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/l10n/ko_kr/ko_kr_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'ko_KR': koKR};
}
