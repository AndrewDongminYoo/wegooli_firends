// 📦 Package imports:
import 'package:get/get.dart';

/// This class is used in the [notices_one_item_widget] screen.
class NoticesOneItemModel {
  NoticesOneItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
