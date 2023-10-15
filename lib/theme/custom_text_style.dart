import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeGray50004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50004,
      );
  static get bodyLargeNotoSansKRBlack900 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeNotoSansKRBluegray900 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeNotoSansKRGray50002 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyLargeNotoSansKRGray700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeNotoSansKRRedA700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.redA700,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumNotoSansKR =>
      theme.textTheme.bodyMedium!.notoSansKR.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumNotoSansKRGray50002 =>
      theme.textTheme.bodyMedium!.notoSansKR.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppinsGray70002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70002,
        fontSize: 13.fSize,
      );
  static get bodyMediumPretendard => theme.textTheme.bodyMedium!.pretendard;
  static get bodyMediumPretendardBluegray900 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumPretendardBluegray900Light =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPretendardGray50001 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumPretendardGray50002 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.gray50002,
        fontSize: 14.fSize,
      );
  static get bodyMediumPretendardGray60001 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPretendardOnPrimary =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPretendardOnPrimary14 =>
      theme.textTheme.bodyMedium!.pretendard.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoBluegray90001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray200_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 10.fSize,
      );
  static get bodySmallGray50003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50003,
      );
  static get bodySmallGray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallInterBluegray300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallInterGray40001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray40001,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray40001_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallNanumSquareRoundBluegray200 =>
      theme.textTheme.bodySmall!.nanumSquareRound.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Label text style
  static get labelLargeRed60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red60001,
        fontWeight: FontWeight.w500,
      );
  // S text style
  static get sUITGray60001 => TextStyle(
        color: appTheme.gray60001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).sUIT;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 21.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray200_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumDeeppurpleA20002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA20002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumNanumSquareRound =>
      theme.textTheme.titleMedium!.nanumSquareRound.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNotoSansKRBluegray900 =>
      theme.textTheme.titleMedium!.notoSansKR.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static get titleMediumRed60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red60001,
      );
  static get titleMediumRobotoBluegray90001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 17.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBluegray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNanumSquareRoundBlack900 =>
      theme.textTheme.titleSmall!.nanumSquareRound.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoBluegray90001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleSmallRobotoGray40002 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray40002,
      );
}

extension on TextStyle {
  TextStyle get jalnan {
    return copyWith(
      fontFamily: 'Jalnan',
    );
  }

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

  TextStyle get cookieRun {
    return copyWith(
      fontFamily: 'CookieRun',
    );
  }
}
