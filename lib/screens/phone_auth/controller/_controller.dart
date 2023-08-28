// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the LoginValidatePhoneAuthScreen.
///
/// This class manages the state of the LoginValidatePhoneAuthScreen, including the
/// current validatePhoneAuthModelObj
class PhoneAuthController extends GetxController {
  static PhoneAuthController get to => Get.isRegistered<PhoneAuthController>()
      ? Get.find<PhoneAuthController>()
      : Get.put(PhoneAuthController());
  TextEditingController namePromptController = TextEditingController();
  TextEditingController age1FormatController = TextEditingController();
  TextEditingController age2FormatController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  Rx<PhoneProviderModel> phoneProviderModelObj = PhoneProviderModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  bool get isValidatedPhone {
    // TODO: 휴대폰 인증 로직이 필요합니다.
    return true;
  }

  @override
  void onClose() {
    namePromptController.dispose();
    age1FormatController.dispose();
    age2FormatController.dispose();
    pinCodeController.dispose();
    phoneNumberController.dispose();
    super.onClose();
  }

  void setDropdownItem(dynamic value) {
    for (var element in phoneProviderModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    phoneProviderModelObj.value.dropdownItemList.refresh();
  }
}
