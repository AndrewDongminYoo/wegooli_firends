// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'calendar_item_model.dart';

class SchedulesModel {
  Rx<List<CalendarItemModel>> calendarItemList =
      Rx(List.generate(7, (index) => CalendarItemModel()));
}
