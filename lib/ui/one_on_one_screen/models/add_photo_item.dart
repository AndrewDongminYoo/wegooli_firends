// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

class AddPhotoItem {
  AddPhotoItem({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
