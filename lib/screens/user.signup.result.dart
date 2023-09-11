// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterSuccess extends GetWidget<UserController> {
  const RegisterSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: Unfocused(
        child: Container(
          // width: double.maxFinite,
          padding: getPadding(left: 16, right: 16),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: Assets.images.imgGooli0.path,
                      height: getVerticalSize(109),
                      width: getHorizontalSize(136),
                      alignment: Alignment.centerRight,
                      margin: getMargin(right: 87)),
                  Container(
                      width: getHorizontalSize(153),
                      margin: getMargin(top: 36),
                      child: Text(
                        l10ns.yourRegistrationHasBeenCompleted,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          letterSpacing: getHorizontalSize(0.05),
                        ),
                      )),
                  Padding(
                      padding: getPadding(top: 27),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text(
                                        l10ns.optionalInvitaionCode,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.03),
                                        ),
                                      )),
                                ]),
                            InviteCodeFormField(controller: controller),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10ns.enterYourInvitationCode,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodySmallErrorContainer
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(0.04),
                                    ),
                                  ),
                                  Text(
                                    l10ns.youCanJoinTheTeamRightAway,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodySmallErrorContainer
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(0.04),
                                    ),
                                  ),
                                ]),
                          ])),
                  // Spacer(),
                ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: const SignUpFinishButton(),
      ),
    ));
  }
}
