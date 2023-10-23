// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:get/route_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/fonts.gen.dart';
import '/theme/custom_text_style.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

class RouteModal extends StatelessWidget {
  const RouteModal({
    super.key,
    this.dialog,
    this.bottomSheet,
    required this.title,
  }) : assert(!(dialog == null && bottomSheet == null));

  final Widget? dialog;
  final Widget? bottomSheet;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        try {
          dialog != null
              ? Get.dialog(
                  dialog!,
                  barrierDismissible: true,
                  useSafeArea: true,
                )
              : Navigator.of(context).push(
                  GetModalBottomSheetRoute(
                    builder: (_) => bottomSheet!,
                    isPersistent: true,
                    theme: Theme.of(context),
                    isScrollControlled: true,
                    barrierLabel: MaterialLocalizations.of(context)
                        .modalBarrierDismissLabel,
                    backgroundColor: Colors.transparent,
                  ),
                );
        } catch (error, stackTrace) {
          Catcher2.reportCheckedError(error, stackTrace);
        }
      },
      child: Container(
        decoration: BoxDecoration(color: lightTheme.onSecondary),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(horizontal: 20, vertical: 10),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                      color: Colors.black,
                      fontSize: TextSize.xl,
                      fontFamily: FontFamily.roboto),
                ),
              )),
          Padding(
              padding: getPadding(top: 5),
              child: Divider(
                  height: 1.v, thickness: 1.v, color: Palette.blueGray400)),
        ]),
      ),
    );
  }
}
