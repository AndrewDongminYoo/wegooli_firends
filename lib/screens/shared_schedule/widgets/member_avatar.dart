// 🐦 Flutter imports:

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/shared_schedule/widgets/utilities.dart';

class MemberAvatar extends StatelessWidget {
  const MemberAvatar({
    super.key,
    required this.name,
    required this.avatarImagePath,
    required this.personalColor,
  });
  final String name;
  final String avatarImagePath;
  final String personalColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: personalColor.toColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Container(
              height: getSize(
                50,
              ),
              width: getSize(
                50,
              ),
              padding: getPadding(
                all: 4,
              ),
              decoration: AppDecoration.fill3.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: avatarImagePath,
                    height: getSize(
                      42,
                    ),
                    width: getSize(
                      42,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        21,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodySmall!.copyWith(
                letterSpacing: getHorizontalSize(
                  0.02,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
