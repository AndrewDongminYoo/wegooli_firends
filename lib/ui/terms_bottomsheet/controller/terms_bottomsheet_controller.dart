// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/terms_bottomsheet/models/terms_bottomsheet_model.dart';

class TermsOfUseController extends GetxController {
  TextEditingController nameinputone = TextEditingController();

  Rx<VerificationTermsBottomsheetModel> identityVerificationTermsBottomsheet =
      VerificationTermsBottomsheetModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameinputone.dispose();
  }
}
