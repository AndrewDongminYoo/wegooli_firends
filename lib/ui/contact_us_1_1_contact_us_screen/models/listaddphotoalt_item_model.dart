// 📦 Package imports:
import 'package:get/get.dart';

/// This class is used in the [listaddphotoalt_item_widget] screen.
class ListaddphotoaltItemModel {
  ListaddphotoaltItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
