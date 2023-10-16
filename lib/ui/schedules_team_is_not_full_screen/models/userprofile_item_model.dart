import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
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
