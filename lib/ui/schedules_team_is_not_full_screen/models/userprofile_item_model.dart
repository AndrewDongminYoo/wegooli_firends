// 📦 Package imports:
import 'package:get/get.dart';

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
