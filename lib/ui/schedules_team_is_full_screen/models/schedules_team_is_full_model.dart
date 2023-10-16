// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'calendar1_item_model.dart';

class SchedulesTeamIsFullModel {
  Rx<List<Calendar1ItemModel>> calendar1ItemList =
      Rx(List.generate(7, (index) => Calendar1ItemModel()));
}
