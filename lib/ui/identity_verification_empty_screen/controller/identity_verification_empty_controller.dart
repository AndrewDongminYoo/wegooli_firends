// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_empty_screen/models/identity_verification_empty_model.dart';

class IdentityVerificationEmptyController extends GetxController {
  TextEditingController nameinputone = TextEditingController();
  TextEditingController phonenumberone = TextEditingController();

  Rx<IdentityVerificationEmptyModel> identityVerificationEmpty =
      IdentityVerificationEmptyModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameinputone.dispose();
    phonenumberone.dispose();
  }
}
