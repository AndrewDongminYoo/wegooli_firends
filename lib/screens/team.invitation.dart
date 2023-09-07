// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class TeamInvitation extends StatelessWidget {
  TeamInvitation({super.key});
  UserController controller = UserController.to;
  VehicleController vehicleController = VehicleController.to;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getFriendsTypoAppBar(),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 30),
            child: Padding(
                padding: getPadding(right: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.imgGooli4.path,
                      height: getSize(177),
                      width: getSize(120),
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      '팀에 가입하고 이용해주세요.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w700,
                        height: 1.44,
                        letterSpacing: 0.04,
                      ),
                    ),
                    CustomElevatedButton(
                      text: '초대코드 입력',
                      width: mediaQueryData.size.width,
                      height: getSize(52),
                      margin: getMargin(top: 30),
                      buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                        Size(
                          mediaQueryData.size.width,
                          getVerticalSize(52),
                        ),
                      )),
                      buttonTextStyle: CustomTextStyles.titleMedium18,
                      onTap: () {
                        // goSendingInvitation();
                        Widget openInvitationModal = const AlertDialog(
                            backgroundColor: Colors.transparent,
                            contentPadding: EdgeInsets.zero,
                            insetPadding: EdgeInsets.zero,
                            content: SendingInvitationLog());
                        Get.dialog(openInvitationModal);
                      },
                    ),
                  ],
                )),
          )),
    ));
  }
}
