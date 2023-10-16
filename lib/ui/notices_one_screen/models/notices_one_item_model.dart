// 📦 Package imports:
import 'package:get/get.dart';

class NoticesOneItemModel {
  NoticesOneItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
