// 📦 Package imports:
import 'package:get/state_manager.dart';

class ListAddPhotoAltItemModel {
  ListAddPhotoAltItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
