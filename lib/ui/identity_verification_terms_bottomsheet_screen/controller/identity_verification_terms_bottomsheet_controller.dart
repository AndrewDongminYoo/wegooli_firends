// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_terms_bottomsheet_screen/models/identity_verification_terms_bottomsheet_model.dart';

/// A controller class for the IdentityVerificationTermsBottomsheetScreen.
///
/// This class manages the state of the IdentityVerificationTermsBottomsheetScreen, including the
/// current identityVerificationTermsBottomsheetModelObj
class IdentityVerificationTermsBottomsheetController extends GetxController {
  TextEditingController nameinputoneController = TextEditingController();

  Rx<IdentityVerificationTermsBottomsheetModel>
      identityVerificationTermsBottomsheetModelObj =
      IdentityVerificationTermsBottomsheetModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameinputoneController.dispose();
  }
}
