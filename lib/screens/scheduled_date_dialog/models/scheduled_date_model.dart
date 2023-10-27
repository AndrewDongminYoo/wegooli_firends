// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import 'list_item_model.dart';

class ScheduledDateModel {
  final listItems = Rx(List.generate(3, (_) => ListItemModel()));
}
