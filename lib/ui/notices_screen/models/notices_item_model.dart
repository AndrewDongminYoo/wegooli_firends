// 📦 Package imports:
import 'package:get/state_manager.dart';

class NoticesItemModel {
  NoticesItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
