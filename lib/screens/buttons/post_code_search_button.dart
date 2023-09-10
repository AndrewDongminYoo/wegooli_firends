// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:kpostal/kpostal.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PostCodeSearchButton extends StatelessWidget {
  const PostCodeSearchButton({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.addressSearch,
        height: getVerticalSize(48),
        margin: getMargin(left: 4, top: 27),
        buttonStyle: CustomButtonStyles.fillPrimaryC5,
        buttonTextStyle: theme.textTheme.titleMedium,
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => KpostalView(
                  useLocalServer: true,
                  localPort: 1024,
                  callback: (Kpostal result) {
                    controller.postCode.text = result.postCode;
                    controller.primaryAddress.text = result.address;
                  }),
            ),
          );
        });
  }
}
