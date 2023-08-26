import 'package:get/get.dart';
import 'package:wegooli_friends_public/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [register_credit_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterCreditCardModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
