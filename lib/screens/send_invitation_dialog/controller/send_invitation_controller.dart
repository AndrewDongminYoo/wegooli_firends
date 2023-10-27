// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';

class InvitationController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static InvitationController get to =>
      GetIt.I.isRegistered<InvitationController>()
          ? GetIt.I.get<InvitationController>()
          : GetIt.I.registerSingleton(InvitationController());

  final invitationCode = TextEditingController();
  final canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    invitationCode.dispose();
  }

  void printFormFields() {
    logger.i('초대코드: ${invitationCode.text}');
  }
}
