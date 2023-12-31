// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class TeamInvitation extends StatelessWidget {
  const TeamInvitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getFriendsTypoAppBar(),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 30),
            child: Padding(
                padding: getPadding(right: 16, left: 16),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.imgGooli4.path,
                      height: 177.adaptSize,
                      width: 120.adaptSize,
                      fit: BoxFit.fitWidth,
                    ),
                    const Text(
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
                    const InsertInvitationCodeButton(),
                  ],
                )),
          )),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
