// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class ReservationsCheckingPageDialog extends StatelessWidget {
  final userController = UserController.to;
  final DateTime? selectedDay;
  ReservationsCheckingPageDialog({super.key, this.selectedDay});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
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

              // Obx(
              //   () => ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (_, int index) {
              //         final currentUser = userController.currentUser.value;
              //         // final member = userController.members
              //         //     .where((it) => currentUser.id != it.accountId)
              //         //     .toList()[index];
              //         return TeamReservationsItem();
              //       },
              //       itemCount: userController.members.length,
              //       shrinkWrap: true),
              // ),
            ]),
      ),
    );
  }
}
