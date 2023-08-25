// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/app_export.dart';
import '../models/_model.dart';

/// A controller class for the LoginValidatePhoneAuthScreen.
///
/// This class manages the state of the LoginValidatePhoneAuthScreen, including the
/// current validatePhoneAuthModelObj
class ValidatePhoneController extends GetxController {
  TextEditingController namePromptController = TextEditingController();
  TextEditingController age1FormatController = TextEditingController();
  TextEditingController age2FormatController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  Rx<PhoneProviderModel> phoneProviderModelObj = PhoneProviderModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  bool get isValidatedPhone {
    // TODO: 휴대폰 인증 로직이 필요합니다.
    return true;
  }

  @override
  void onClose() {
    super.onClose();
    namePromptController.dispose();
    age1FormatController.dispose();
    age2FormatController.dispose();
    codeController.dispose();
    phoneNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in phoneProviderModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    phoneProviderModelObj.value.dropdownItemList.refresh();
  }
}
