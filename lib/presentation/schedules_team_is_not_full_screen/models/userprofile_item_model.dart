/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.id,
  }) {
    userName = userName ?? '홍길동';
    id = id ?? '';
  }

  String? userName;

  String? id;
}
