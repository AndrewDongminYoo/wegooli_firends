// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'userage_item_model.dart';
import 'userprofile_item_model.dart';

class SchedulesModel {
  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(4, (index) => UserprofileItemModel()));

  Rx<List<UserageItemModel>> userageItemList =
      Rx(List.generate(7, (index) => UserageItemModel()));
}
