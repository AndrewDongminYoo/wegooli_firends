// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import 'list_item_model.dart';

class HistoryModel {
  final items = Rx(List.generate(8, (_) => ListItemModel()));
}
