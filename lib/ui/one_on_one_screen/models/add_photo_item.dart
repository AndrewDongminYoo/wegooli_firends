// 📦 Package imports:
import 'package:get/state_manager.dart';

class AddPhotoItem {
  AddPhotoItem({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
