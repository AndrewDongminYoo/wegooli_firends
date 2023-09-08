// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class ReservationsCheckingPageDialog extends StatefulWidget {
  final DateTime? selectedDay;
  const ReservationsCheckingPageDialog({super.key, this.selectedDay});

  @override
  State<ReservationsCheckingPageDialog> createState() =>
      _ReservationsCheckingPageDialogState();
}

class _ReservationsCheckingPageDialogState
    extends State<ReservationsCheckingPageDialog> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: mediaQueryData.size.width,
          margin: getMargin(left: 16, right: 16, bottom: 288),
          padding: getPadding(all: 15),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TeamReservationsItem(),
              ]),
        ),
      ),
    );
  }
}
