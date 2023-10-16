// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'listview_item_model.dart';

class ViewScheduledDateSchedulerOnlyModel {
  Rx<List<ListviewItemModel>> listviewItemList =
      Rx(List.generate(3, (index) => ListviewItemModel()));
}
