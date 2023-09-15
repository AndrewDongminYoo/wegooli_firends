// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class UnsubscribeButton extends StatelessWidget {
  const UnsubscribeButton({
    super.key,
    required this.controller,
    required this.plural,
  });

  final VehicleController controller;
  final bool plural;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: plural ? getHorizontalSize(145) : getHorizontalSize(216),
      height: getVerticalSize(52),
      text: plural ? l10ns.unsubscribe : l10ns.cancelingASubscription,
      buttonStyle: plural
          ? CustomButtonStyles.fillPrimaryBR10
          : CustomButtonStyles.fillPrimaryC26,
      buttonTextStyle: plural
          ? CustomTextStyles.titleMedium16
          : CustomTextStyles.titleMedium18,
      onTap: () async {
        if (plural) {
          /// 다이얼로그 내 버튼
          await controller.unsubscribe();
        } else {
          /// 요청 전, 취소를 확인하는 다이얼로그를 생성하여 보여줌
          await Get.dialog(UnsubscriptionConfirmDialog(controller: controller));
        }
      },
    );
  }
}
