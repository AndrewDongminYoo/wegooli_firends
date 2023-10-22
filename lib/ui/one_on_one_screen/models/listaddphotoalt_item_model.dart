// 📦 Package imports:
import 'package:get/get.dart';

class ListAddPhotoAltItemModel {
  ListAddPhotoAltItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
