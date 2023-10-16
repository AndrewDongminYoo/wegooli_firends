// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'notices_item_model.dart';

/// This class defines the variables used in the [notices_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NoticesModel {
  Rx<List<NoticesItemModel>> noticesItemList =
      Rx(List.generate(9, (index) => NoticesItemModel()));
}
