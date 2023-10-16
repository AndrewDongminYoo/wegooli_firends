import '../../../core/app_export.dart';

/// This class defines the variables used in the [appointment_start_expanded_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentStartExpandedModel {
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
}
