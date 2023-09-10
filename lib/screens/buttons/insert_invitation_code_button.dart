// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InsertInvitationCodeButton extends StatelessWidget {
  const InsertInvitationCodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: '초대코드 입력',
      width: mediaQueryData.size.width,
      margin: getMargin(top: 30),
      buttonStyle: CustomButtonStyles.fillPrimaryC26,
      buttonTextStyle: CustomTextStyles.titleMedium18,
      onTap: goSendingInvitation,
    );
  }
}
