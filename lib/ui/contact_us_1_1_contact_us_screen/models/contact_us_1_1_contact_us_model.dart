import '../../../core/app_export.dart';
import 'listaddphotoalt_item_model.dart';

/// This class defines the variables used in the [contact_us_1_1_contact_us_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactUs11ContactUsModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: 'Item One',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: 'Item Two',
    ),
    SelectionPopupModel(
      id: 3,
      title: 'Item Three',
    )
  ]);

  Rx<List<ListaddphotoaltItemModel>> listaddphotoaltItemList =
      Rx(List.generate(5, (index) => ListaddphotoaltItemModel()));
}
