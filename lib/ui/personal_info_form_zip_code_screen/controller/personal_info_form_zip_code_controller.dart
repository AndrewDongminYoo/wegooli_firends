import '/core/app_export.dart';
import '/ui/personal_info_form_zip_code_screen/models/personal_info_form_zip_code_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PersonalInfoFormZipCodeScreen.
///
/// This class manages the state of the PersonalInfoFormZipCodeScreen, including the
/// current personalInfoFormZipCodeModelObj
class PersonalInfoFormZipCodeController extends GetxController {
  TextEditingController postalcodeoneController = TextEditingController();

  TextEditingController defaultaddressController = TextEditingController();

  TextEditingController detailedaddressController = TextEditingController();

  TextEditingController emailaddressController = TextEditingController();

  TextEditingController eyecrossedoutController = TextEditingController();

  TextEditingController passwordreentryController = TextEditingController();

  TextEditingController nicknameinputController = TextEditingController();

  Rx<PersonalInfoFormZipCodeModel> personalInfoFormZipCodeModelObj =
      PersonalInfoFormZipCodeModel().obs;

  @override
  void onClose() {
    super.onClose();
    postalcodeoneController.dispose();
    defaultaddressController.dispose();
    detailedaddressController.dispose();
    emailaddressController.dispose();
    eyecrossedoutController.dispose();
    passwordreentryController.dispose();
    nicknameinputController.dispose();
  }
}
