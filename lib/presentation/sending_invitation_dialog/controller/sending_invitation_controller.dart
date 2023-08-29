import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/sending_invitation_dialog/models/sending_invitation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SendingInvitationDialog.
///
/// This class manages the state of the SendingInvitationDialog, including the
/// current sendingInvitationModelObj
class SendingInvitationController extends GetxController {
  TextEditingController valueoneController = TextEditingController();

  Rx<SendingInvitationModel> sendingInvitationModelObj =
      SendingInvitationModel().obs;

  @override
  void onClose() {
    super.onClose();
    valueoneController.dispose();
  }
}
