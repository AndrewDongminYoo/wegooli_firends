// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'list_item_model.dart';

class ContactUsInquiryHistoryModel {
  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(8, (index) => ListItemModel()));
}
