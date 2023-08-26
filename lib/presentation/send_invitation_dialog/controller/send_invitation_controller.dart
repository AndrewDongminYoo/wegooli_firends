import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/send_invitation_dialog/models/send_invitation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SendInvitationDialog.
///
/// This class manages the state of the SendInvitationDialog, including the
/// current sendInvitationModelObj
class SendInvitationController extends GetxController {
  TextEditingController valueoneController = TextEditingController();

  Rx<SendInvitationModel> sendInvitationModelObj = SendInvitationModel().obs;

  @override
  void onClose() {
    super.onClose();
    valueoneController.dispose();
  }
}
