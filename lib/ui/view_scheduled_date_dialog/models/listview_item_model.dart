// 📦 Package imports:
import 'package:get/state_manager.dart';

class ListviewItemModel {
  ListviewItemModel({
    this.value,
    this.id,
  }) {
    value = value ?? Rx('홍길동');
    id = id ?? Rx('');
  }

  Rx<String>? value;

  Rx<String>? id;
}
