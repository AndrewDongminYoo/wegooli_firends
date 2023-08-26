import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/register_credit_card_screen/models/register_credit_card_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterCreditCardScreen.
///
/// This class manages the state of the RegisterCreditCardScreen, including the
/// current registerCreditCardModelObj
class RegisterCreditCardController extends GetxController {
  TextEditingController cardnumbervalueController = TextEditingController();

  TextEditingController expirationdatevController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  Rx<RegisterCreditCardModel> registerCreditCardModelObj =
      RegisterCreditCardModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    cardnumbervalueController.dispose();
    expirationdatevController.dispose();
    zipcodeController.dispose();
    edittextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in registerCreditCardModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerCreditCardModelObj.value.dropdownItemList.refresh();
  }
}
