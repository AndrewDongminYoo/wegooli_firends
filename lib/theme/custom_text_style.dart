import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodyLargeBluegray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static TextStyle get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static TextStyle get bodyLargeGray50004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50004,
      );
  static TextStyle get bodyLargeNotoSansKRBlack900 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodyLargeNotoSansKRBluegray900 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get bodyLargeNotoSansKRGray50002 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.gray50002,
      );
  static TextStyle get bodyLargeNotoSansKRGray700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.gray700,
      );
  static TextStyle get bodyLargeNotoSansKRRedA700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.redA700,
      );
  static TextStyle get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static TextStyle get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static TextStyle get bodyMediumNotoSansKR =>
      theme.textTheme.bodyMedium!.notoSansKR.copyWith(
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumNotoSansKRGray50002 =>
      theme.textTheme.bodyMedium!.notoSansKR.copyWith(
        color: appTheme.gray50002,
      );
  static TextStyle get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get bodyMediumPoppinsGray70002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70002,
        fontSize: 13.fSize,
      );
  static TextStyle get bodyMediumPretendard => theme.textTheme.bodyMedium!.pretendard;
  static TextStyle get bodyMediumPretendardBluegray900 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumPretendardBluegray900Light =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodyMediumPretendardGray50001 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.gray50001,
      );
  static TextStyle get bodyMediumPretendardGray50002 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.gray50002,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumPretendardGray60001 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
      );
  static TextStyle get bodyMediumPretendardOnPrimary =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get bodyMediumPretendardOnPrimary14 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumRobotoBluegray900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumRobotoBluegray90001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumRobotoOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBluegray200_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static TextStyle get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBluegray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static TextStyle get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
      );
  static TextStyle get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallGray50003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50003,
      );
  static TextStyle get bodySmallGray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
      );
  static TextStyle get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterBluegray300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static TextStyle get bodySmallInterGray40001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray40001,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterGray40001_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray40001,
      );
  static TextStyle get bodySmallNanumSquareRoundBluegray200 =>
      theme.textTheme.bodySmall!.nanumSquareRound.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
      );
  static TextStyle get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Label text style
  static TextStyle get labelLargeRed60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red60001,
        fontWeight: FontWeight.w500,
      );
  // S text style
  static TextStyle get sUITGray60001 => TextStyle(
        color: appTheme.gray60001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).sUIT;
  // Title text style
  static TextStyle get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 21.fSize,
      );
  static TextStyle get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumBluegray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumBluegray200_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static TextStyle get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumBluegray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumDeeppurpleA20002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA20002,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumNanumSquareRound =>
      theme.textTheme.titleMedium!.nanumSquareRound.copyWith(
        fontWeight: FontWeight.w800,
      );
  static TextStyle get titleMediumNotoSansKRBluegray900 =>
      theme.textTheme.titleMedium!.notoSansKR.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get titleMediumRed60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red60001,
      );
  static TextStyle get titleMediumRobotoBluegray90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 17.fSize,
      );
  static TextStyle get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleSmallBluegray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallNanumSquareRoundBlack900 =>
      theme.textTheme.titleSmall!.nanumSquareRound.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallRobotoBluegray90001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray90001,
      );
  static TextStyle get titleSmallRobotoGray40002 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray40002,
      );
}

extension on TextStyle {

  TextStyle get notoSansKR {
    return copyWith(
      fontFamily: 'Noto Sans KR',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get nanumSquareRound {
    return copyWith(
      fontFamily: 'NanumSquareRound',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get pretendard {
    return copyWith(
      fontFamily: 'Pretendard',
    );
  }

  TextStyle get sUIT {
    return copyWith(
      fontFamily: 'SUIT',
    );
  }
}
