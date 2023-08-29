import 'package:get/get.dart';
import 'k0_item_model.dart';

/// This class defines the variables used in the [smart_key_available_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SmartKeyAvailableModel {
  Rx<List<K0ItemModel>> k0ItemList =
      Rx(List.generate(4, (index) => K0ItemModel()));
}
