// 📦 Package imports:
import 'package:get/get.dart';

class NoticesItemModel {
  NoticesItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
