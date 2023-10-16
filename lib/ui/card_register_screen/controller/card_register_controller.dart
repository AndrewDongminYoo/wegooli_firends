import '/core/app_export.dart';
import '/ui/card_register_screen/models/card_register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CardRegisterScreen.
///
/// This class manages the state of the CardRegisterScreen, including the
/// current cardRegisterModelObj
class CardRegisterController extends GetxController {
  TextEditingController cardnumbervalueController = TextEditingController();

  TextEditingController expirationdatevController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  Rx<CardRegisterModel> cardRegisterModelObj = CardRegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardnumbervalueController.dispose();
    expirationdatevController.dispose();
    zipcodeController.dispose();
    edittextController.dispose();
  }
}
