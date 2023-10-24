// 📦 Package imports:
import 'package:get/state_manager.dart';

class ListItemModel {
  ListItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
