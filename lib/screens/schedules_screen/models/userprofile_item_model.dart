// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

class ProfileModel {
  ProfileModel({
    this.id,
    this.name,
    this.avatarImagePath,
    this.personalColor,
  });

  Rx<String>? id;
  Rx<String>? name;
  Rx<String>? avatarImagePath;
  Rx<String>? personalColor;
}
