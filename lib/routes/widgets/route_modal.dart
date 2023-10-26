// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/fonts.gen.dart';
import '/theme/custom_text_style.dart';
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
              ? showDialog(
                  context: context,
                  builder: (_) {
                    return Theme(data: theme, child: dialog!);
                  },
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black54,
                )
              : Navigator.of(context).push(
                  ModalBottomSheetRoute(
                    builder: (_) => bottomSheet!,
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
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    color: Colors.black,
                    fontSize: TextSize.xl,
                    fontFamily: FontFamily.roboto,
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Divider(
                  height: 1.v, thickness: 1.v, color: Palette.blueGray400)),
        ]),
      ),
    );
  }
}
