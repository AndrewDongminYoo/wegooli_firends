// 📦 Package imports:
import 'package:get/get.dart';

class ListItemModel {
  ListItemModel({this.id}) {
    id = id ?? Rx('');
  }

  Rx<String>? id;
}
