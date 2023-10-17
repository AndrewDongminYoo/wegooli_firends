// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_terms_bottomsheet_screen/models/identity_verification_terms_bottomsheet_model.dart';

class IdentityVerificationTermsBottomsheetController extends GetxController {
  TextEditingController nameinputone = TextEditingController();

  Rx<IdentityVerificationTermsBottomsheetModel>
      identityVerificationTermsBottomsheet =
      IdentityVerificationTermsBottomsheetModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameinputone.dispose();
  }
}
