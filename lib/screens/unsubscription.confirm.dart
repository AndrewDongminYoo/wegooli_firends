// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class UnsubscriptionConfirm extends StatelessWidget {
  const UnsubscriptionConfirm({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = VehicleController.to;
    final expireDate =
        DateTime.tryParse(controller.calcDate()) ?? DateTime.now();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.scheduleAnUnsubscribe),
      body: SingleChildScrollView(
          padding: getPadding(left: 16, top: 52, right: 16, bottom: 52),
          child: Column(
            children: [
              CustomImageView(
                imagePath: Assets.images.imgGooli5.path,
                height: 130.v,
                width: 157.h,
                fit: BoxFit.cover,
              ),
              Container(
                  width: 179.h,
                  margin: getMargin(top: 50),
                  child: Text(
                    l10ns.areYouSureYouWantToUnsubscribe(goolier.nickname!),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumBlack900.copyWith(
                      letterSpacing: 0.04.h,
                    ),
                  )),
              Padding(
                  padding: getPadding(top: 23),
                  child: Text(
                    l10ns.subscriptionsWillBeCanceledAfter(
                        expireDate.year, expireDate.month, expireDate.day),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyLargeBlack900.copyWith(
                      letterSpacing: 0.03.h,
                    ),
                  )),
              Padding(
                  padding: getPadding(top: 87, bottom: 5),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CancelButton(plural: false),
                        UnsubscribeButton(plural: false),
                      ])),
            ],
          )),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
