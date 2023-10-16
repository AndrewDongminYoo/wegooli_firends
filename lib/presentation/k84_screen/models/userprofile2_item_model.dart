/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.userName,
    this.id,
  }) {
    userName = userName ?? "홍길동";
    id = id ?? "";
  }

  String? userName;

  String? id;
}
