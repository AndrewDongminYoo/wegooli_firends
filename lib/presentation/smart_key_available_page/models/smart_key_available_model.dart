import 'package:get/get.dart';
import 'dooropener_item_model.dart';

/// This class defines the variables used in the [smart_key_available_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SmartKeyAvailableModel {
  Rx<List<DooropenerItemModel>> dooropenerItemList =
      Rx(List.generate(4, (index) => DooropenerItemModel()));
}
