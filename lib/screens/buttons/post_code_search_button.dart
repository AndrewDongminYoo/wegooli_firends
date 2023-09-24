// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:kpostal/kpostal.dart';

// 🌎 Project imports:
import '/lib.dart';

class PostCodeSearchButton extends StatelessWidget {
  const PostCodeSearchButton({
    super.key,
    required this.code,
    required this.address,
    required this.controller,
  });

  final UserController controller;
  final TextEditingController code;
  final TextEditingController address;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.addressSearch,
        height: 48.v,
        margin: getMargin(left: 4, top: 27),
        buttonStyle: CustomButtonStyles.fillPrimaryC5,
        buttonTextStyle: theme.textTheme.titleMedium,
        onTap: () async {
          if (kDebugMode && kIsWeb) {
            code.text = '06044';
            address.text = '서울특별시 강남구 학동로3길 9';
            controller.postCode = '06044';
            controller.primaryAddress = '서울특별시 강남구 학동로3길 9';
          } else {
            await Get.to(
              () => KpostalView(callback: (Kpostal result) {
                code.text = result.postCode;
                address.text = result.roadAddress;
                controller.postCode = result.postCode;
                controller.primaryAddress = result.roadAddress;
              }),
            );
          }
        });
  }
}
