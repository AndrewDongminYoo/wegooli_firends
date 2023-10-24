// 📦 Package imports:
import 'package:get/state_manager.dart';

class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.id,
  }) {
    userName = userName ?? Rx('홍길동');
    id = id ?? Rx('');
  }

  Rx<String>? userName;

  Rx<String>? id;
}
