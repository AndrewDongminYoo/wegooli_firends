// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

class ProfileModel {
  ProfileModel({
    this.userName,
    this.id,
  }) {
    userName = userName ?? Rx('홍길동');
    id = id ?? Rx('');
  }

  Rx<String>? userName;

  Rx<String>? id;
}
