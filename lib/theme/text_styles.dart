// ignore_for_file: unused_element

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/gen/fonts.gen.dart';
import '/core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Title text style
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallNanumSquareRoundOnPrimary =>
      theme.textTheme.titleSmall!.nanumSquareRound.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Body text style
  static get bodyLargeGray50003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50003,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallInterGray400 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyLargeNotoSansKRGray700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallGray50004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50004,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallInterGray400_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallInterSecondaryContainer_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallInterSecondaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumInterOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumInterGray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
}

extension on TextStyle {
  TextStyle get pretendard {
    return copyWith(
      fontFamily: FontFamily.pretendard,
    );
  }

  TextStyle get nanumSquareRound {
    return copyWith(
      fontFamily: FontFamily.nanumSquareRound,
    );
  }

  TextStyle get notoSansKR {
    return copyWith(
      fontFamily: FontFamily.notoSansKR,
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: FontFamily.inter,
    );
  }

  TextStyle get cookieRun {
    return copyWith(
      fontFamily: FontFamily.cookieRun,
    );
  }
}
