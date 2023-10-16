// 📦 Package imports:
import 'package:get/get.dart';

/// This class is used in the [list_item_widget] screen.
class ListItemModel {
  ListItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
