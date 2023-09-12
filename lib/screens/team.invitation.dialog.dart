// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SendingInvitationDialog extends StatefulWidget {
  const SendingInvitationDialog({super.key, this.copyMode = false});
  final bool copyMode;
  @override
  State<SendingInvitationDialog> createState() =>
      _SendingInvitationDialogState();
}

class _SendingInvitationDialogState extends State<SendingInvitationDialog> {
  final controller = VehicleController.to;
  final userController = UserController.to;

  @override
  void initState() {
    userController.getTeamCode().then((teamCode) {
      print('AAA : teamCode : $teamCode');
      if (teamCode != null) {
        controller.invitation.text = teamCode;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: Container(
            margin: getMargin(left: 16, right: 16, bottom: 323),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: getPadding(left: 25, top: 15, right: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 6),
                                child: Text(
                                  l10ns.invitationCode,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.titleMedium18.copyWith(
                                    letterSpacing: getHorizontalSize(0.04),
                                  ),
                                )),
                            CustomImageView(
                                svgPath: Assets.svg.imgCloseGray400Sharp.path,
                                height: getSize(13),
                                width: getSize(13),
                                margin: getMargin(bottom: 15),
                                onTap: goBack),
                          ])),
                  InvitationCodeFormField(
                      controller: controller, readOnly: widget.copyMode),
                  widget.copyMode
                      ? CopyInvitationButton(controller: controller)
                      : ConfirmInvitationButton(controller: controller),
                ]),
          ),
        ));
  }
}
