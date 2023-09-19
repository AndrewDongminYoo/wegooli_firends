// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack900 =>
      theme.textTheme.bodyLarge!.copyWith(color: Colors.black);
  static TextStyle get bodyLargeBluegray200 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray200);
  static TextStyle get bodyLargeBluegray500 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray500);
  static TextStyle get bodyLargeBluegray900 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray900);
  static TextStyle get bodyLargeGray500 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray500);
  static TextStyle get bodyLargeGray50002 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray50002);
  static TextStyle get bodyLargeGray50003 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray50003);
  static TextStyle get bodyLargeGray50005 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray50005);
  static TextStyle get bodyLargeInterBlack900 =>
      theme.textTheme.bodyLarge!.inter.copyWith(color: Colors.black);
  static TextStyle get bodyLargeNotoSansKRBlack900 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(color: Colors.black);
  static TextStyle get bodyLargeNotoSansKRGray700 =>
      theme.textTheme.bodyLarge!.notoSansKR.copyWith(color: appTheme.gray700);
  static TextStyle get bodyLargeOnPrimary => theme.textTheme.bodyLarge!
      .copyWith(color: ColorConstant.fontBlack.withOpacity(0.4));
  static TextStyle get bodyLargeOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(color: Colors.white);
  static TextStyle get bodyMedium15 =>
      theme.textTheme.bodyMedium!.copyWith(fontSize: 15.fSize);
  static TextStyle get bodyMediumBlack900 =>
      theme.textTheme.bodyMedium!.copyWith(color: Colors.black);
  static TextStyle get bodyMediumBlack90015 => theme.textTheme.bodyMedium!
      .copyWith(color: Colors.black, fontSize: 15.fSize);
  static TextStyle get bodyMediumBluegray200 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray200);
  static TextStyle get bodyMediumBluegray500 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray500);
  static TextStyle get bodyMediumBluegray900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodyMediumGray50001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray50001);
  static TextStyle get bodyMediumGray50003 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.gray50003, fontSize: 15.fSize);
  static TextStyle get bodySmall12 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 12.fSize);
  static TextStyle get bodySmallBlack900 =>
      theme.textTheme.bodySmall!.copyWith(color: Colors.black);
  static TextStyle get bodySmallBluegray400 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray400);
  static TextStyle get bodySmallBluegray500 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray500);
  static TextStyle get bodySmallBluegray900 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.blueGray900, fontSize: 10.fSize);
  static TextStyle get bodySmallErrorContainer => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.errorContainer);
  static TextStyle get bodySmallGray400 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray400);
  static TextStyle get bodySmallGray50001 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.gray50001, fontSize: 10.fSize);
  static TextStyle get bodySmallGray50002 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray50002);
  static TextStyle get bodySmallGray50004 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray50004);
  static TextStyle get bodySmallGray700 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray700);
  static TextStyle get bodySmallGray70001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray70001);
  static TextStyle get bodySmallInter10 =>
      theme.textTheme.bodySmall!.inter.copyWith(fontSize: 10.fSize);
  static TextStyle get bodySmallInter10Gray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterOnError =>
      theme.textTheme.bodySmall!.inter.copyWith(color: appTheme.supernova);
  static TextStyle get bodySmallInter10OnError =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.supernova,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallInterOnPrimary =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: ColorConstant.fontBlack,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallOnError =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.supernova);
  static TextStyle get bodySmallOnPrimary => theme.textTheme.bodySmall!
      .copyWith(color: ColorConstant.fontBlack.withOpacity(0.4));
  static TextStyle get bodySmallPretendardGray50003 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(color: appTheme.gray50003);
  static TextStyle get bodySmallPretendardGray70001 =>
      theme.textTheme.bodySmall!.pretendard.copyWith(
        color: appTheme.gray70001,
        fontSize: 12.fSize,
      );
  // Title text style
  static TextStyle get titleMedium16 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 16.fSize);
  static TextStyle get titleMedium18 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 18.fSize);
  static TextStyle get titleMediumBlack900 =>
      theme.textTheme.titleMedium!.copyWith(color: Colors.black);
  static TextStyle get titleMediumBlack90018 => theme.textTheme.titleMedium!
      .copyWith(color: Colors.black, fontSize: 18.fSize);
  static TextStyle get titleMediumBlack900_1 =>
      theme.textTheme.titleMedium!.copyWith(color: Colors.black);
  static TextStyle get titleMediumBluegray900 =>
      theme.textTheme.titleMedium!.copyWith(
          color: appTheme.blueGray900,
          fontSize: 18.fSize,
          fontWeight: FontWeight.w600);
  static TextStyle get titleMediumBluegray900SemiBold =>
      theme.textTheme.titleMedium!
          .copyWith(color: appTheme.blueGray900, fontWeight: FontWeight.w600);
  static TextStyle get titleMediumDeeppurpleA20001 => theme
      .textTheme.titleMedium!
      .copyWith(color: appTheme.deepPurpleA20001, fontWeight: FontWeight.w600);
  static TextStyle get titleMediumOnPrimary => theme.textTheme.titleMedium!
      .copyWith(color: ColorConstant.fontBlack.withOpacity(0.4));
  static TextStyle get titleMediumOnPrimary16 =>
      theme.textTheme.titleMedium!.copyWith(
          color: ColorConstant.fontBlack.withOpacity(0.4), fontSize: 16.fSize);
  static TextStyle get titleMediumOnPrimary18 =>
      theme.textTheme.titleMedium!.copyWith(
          color: ColorConstant.fontBlack.withOpacity(0.4), fontSize: 18.fSize);
  static TextStyle get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!
      .copyWith(color: ColorConstant.fontBlack.withOpacity(0.4));
  static TextStyle get titleMediumRed600 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.red600);
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(color: Colors.black);
  static TextStyle get titleSmallBluegray200 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.blueGray200, fontWeight: FontWeight.w700);
  static TextStyle get titleSmallBluegray900 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.blueGray900, fontWeight: FontWeight.w600);
  static TextStyle get titleSmallBold =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get titleSmallNanumSquareRound =>
      theme.textTheme.titleSmall!.nanumSquareRound
          .copyWith(fontWeight: FontWeight.w700);
  static TextStyle get titleSmallNanumSquareRoundOnPrimary =>
      theme.textTheme.titleSmall!.nanumSquareRound
          .copyWith(color: ColorConstant.fontBlack);
  static TextStyle get titleSmallNanumSquareRoundBlack900 =>
      theme.textTheme.titleSmall!.nanumSquareRound
          .copyWith(color: Colors.black, fontWeight: FontWeight.w700);
  static TextStyle get titleSmallNanumSquareRoundPrimary => theme
      .textTheme.titleSmall!.nanumSquareRound
      .copyWith(color: theme.colorScheme.primary, fontWeight: FontWeight.w700);
  static TextStyle get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!
          .copyWith(color: Colors.white, fontWeight: FontWeight.w700);
  static TextStyle get titleSmallPrimaryContainer => theme.textTheme.titleSmall!
      .copyWith(color: const Color(0xFFEF1010), fontWeight: FontWeight.w700);
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
