// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack900 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900);
  static TextStyle get bodyLargeBluegray900 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray900);
  static TextStyle get bodyLargeGray500 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray500);
  static TextStyle get bodyLargeGray50002 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray50002);
  static TextStyle get bodyLargeGray50003 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray50003);
  static TextStyle get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(color: appTheme.black900);
  static TextStyle get bodyLargeNotoSansKRGray700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(color: appTheme.gray700);
  static TextStyle get bodyLargeOnPrimary => theme.textTheme.bodyLarge!
      .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.4));
  static TextStyle get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!
      .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get bodyMediumBlack900 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900);
  static TextStyle get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(14),
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodyMediumGray50001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray50001);
  static TextStyle get bodySmall12 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: getFontSize(12));
  static TextStyle get bodySmallBlack900 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.black900);
  static TextStyle get bodySmallErrorContainer => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.errorContainer);
  static TextStyle get bodySmallGray50002 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray50002);
  static TextStyle get bodySmallGray700 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray700);
  static TextStyle get bodySmallInter10 =>
      theme.textTheme.bodySmall!.inter.copyWith(fontSize: getFontSize(10));
  static TextStyle get bodySmallInter10Gray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(10),
      );
  static TextStyle get bodySmallInterOnError => theme.textTheme.bodySmall!.inter
      .copyWith(color: theme.colorScheme.onError);
  static TextStyle get bodySmallInter10OnError =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontSize: getFontSize(10),
      );
  static TextStyle get bodySmallInterOnPrimary =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(10),
      );
  static TextStyle get bodySmallOnError =>
      theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onError);
  static TextStyle get bodySmallOnPrimary => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.4));
  static TextStyle get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.4));
  static TextStyle get bodySmallPretendard =>
      theme.textTheme.bodySmall!.pretendard.copyWith(fontSize: getFontSize(12));
  static TextStyle get bodySmallPretendardBlack900 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(12),
      );
  static TextStyle get bodySmallPretendardBluegray900 =>
      theme.textTheme.bodySmall!.pretendard
          .copyWith(color: appTheme.blueGray900);
  static TextStyle get bodySmallPretendardErrorContainer =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(12),
      );
  static TextStyle get bodySmallPretendardGray50003 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(color: appTheme.gray50003);
  static TextStyle get bodySmallPretendardGray70001 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(12),
      );
  static TextStyle get bodySmallPretendardOnPrimary =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(12),
      );
  static TextStyle get bodySmallPretendardOnPrimary12 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
        fontSize: getFontSize(12),
      );
  // Title text style
  static TextStyle get titleMedium16 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: getFontSize(16));
  static TextStyle get titleMedium18 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: getFontSize(18));
  static TextStyle get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(18),
      );
  static TextStyle get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(18),
      );
  static TextStyle get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(18),
      );
  static TextStyle get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(18),
      );
  static TextStyle get titleMediumOnPrimary => theme.textTheme.titleMedium!
      .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.4));
  static TextStyle get titleMediumOnPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
        fontSize: getFontSize(16),
      );
  static TextStyle get titleMediumOnPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
        fontSize: getFontSize(18),
      );
  static TextStyle get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!
      .copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.4));
  static TextStyle get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallNanumSquareRoundOnPrimary =>
      theme.textTheme.titleSmall!.nanumSquareRound
          .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get titleSmallOnPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallPrimaryContainer => theme.textTheme.titleSmall!
      .copyWith(color: theme.colorScheme.primaryContainer);
}

extension on TextStyle {
  TextStyle get notoSansKR {
    return copyWith(fontFamily: FontFamily.notoSansKR);
  }

  TextStyle get nanumSquareRound {
    return copyWith(fontFamily: FontFamily.nanumSquareRound);
  }

  TextStyle get inter {
    return copyWith(fontFamily: FontFamily.inter);
  }

  TextStyle get pretendard {
    return copyWith(fontFamily: FontFamily.pretendard);
  }
}
