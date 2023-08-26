import 'package:get/get.dart';
import 'slider_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx(List.generate(1, (index) => SliderItemModel()));
}
