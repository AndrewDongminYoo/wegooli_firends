// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class MyProfileSection extends StatelessWidget {
  const MyProfileSection({
    super.key,
    required this.controller,
  });
  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.v,
      padding: getPadding(top: 20, bottom: 20, left: 16, right: 16),
      child: Row(
        children: [
          CustomImageView(
            margin: getMargin(right: 16),
            imagePath: Assets.images.placeholder01.path,
            height: 65.adaptSize,
            width: 65.adaptSize,
            radius: BorderRadius.circular(40),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(bottom: 5),
                child: Text(
                  goolier.nickname!,
                  style: const TextStyle(
                    color: ColorConstant.fontBlack,
                    fontSize: 14,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                    letterSpacing: 0.03,
                  ),
                ),
              ),
              Text(
                goolier.phoneNumber!,
                style: const TextStyle(
                  color: ColorConstant.fontBlackDisabled,
                  fontSize: 12,
                  fontFamily: FontFamily.pretendard,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: 0.02,
                ),
              ),
              Text(
                goolier.email!,
                style: const TextStyle(
                  color: ColorConstant.fontBlackDisabled,
                  fontSize: 10,
                  fontFamily: FontFamily.pretendard,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: 0.02,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
