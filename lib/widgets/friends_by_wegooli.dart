// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class FriendsByWegooli extends StatelessWidget {
  const FriendsByWegooli({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: Assets.images.friendsByWegooli.path,
      height: 70.v,
      width: 198.h,
      fit: BoxFit.fill,
    );
  }
}
