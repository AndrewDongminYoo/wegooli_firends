// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodyLargeBluegray200 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static TextStyle get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static TextStyle get bodyLargeGray50003 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50003,
      );
  static TextStyle get bodyLargeOnPrimary =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get bodyLargeOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get bodyLargePrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static TextStyle get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumBlack900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumGray50001 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumGray600 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodySmallBluegray200 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBluegray200_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static TextStyle get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static TextStyle get bodySmallGray50002 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
      );
  static TextStyle get bodySmallGray70001 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
      );
  static TextStyle get bodySmallInter =>
      theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterGray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterGray400_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
      );
  static TextStyle get bodySmallNanumSquareRoundBluegray200 =>
      theme.textTheme.bodySmall!.nanumSquareRound.copyWith(
        color: appTheme.blueGray200,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallOnPrimary =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get bodySmallOnPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
      );
  static TextStyle get bodySmallPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // S text style
  static TextStyle get sUITGray600 => TextStyle(
        color: appTheme.gray600,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).sUIT;
  // Title text style
  static TextStyle get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumBlack900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumBluegray200 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumNanumSquareRound =>
      theme.textTheme.titleMedium!.nanumSquareRound.copyWith(
        fontWeight: FontWeight.w800,
      );
  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get titleMediumRed600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
      );
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleSmallBluegray200 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w700,
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
}

extension on TextStyle {
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

  TextStyle get sUIT {
    return copyWith(
      fontFamily: 'SUIT',
    );
  }
}
