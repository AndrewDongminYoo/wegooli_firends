// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class StyledText {
  static const textInputChatting = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle textInputChattingColor(Color color) =>
      textInputChatting.copyWith(color: color);
  static const textInputHelperText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle textInputHelperTextColor(Color color) =>
      textInputHelperText.copyWith(color: color);
  static const textInputFooter = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.inter,
      fontStyle: FontStyle.normal);
  static TextStyle textInputFooterColor(Color color) =>
      textInputFooter.copyWith(color: color);
  static const noticeTitle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle noticeTitleColor(Color color) =>
      noticeTitle.copyWith(color: color);
  static const textInputTitleButton = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle textInputTitleButtonColor(Color color) =>
      textInputTitleButton.copyWith(color: color);
  static const textInputBigTitle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle textInputBigTitleColor(Color color) =>
      textInputBigTitle.copyWith(color: color);
  static const textInputPlaceholderText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle textInputPlaceholderTextColor(Color color) =>
      textInputPlaceholderText.copyWith(color: color);
  static const mainText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansKR,
      fontStyle: FontStyle.normal);
  static TextStyle mainTextColor(Color color) =>
      mainText.copyWith(color: color);
  static const textInputLabel = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.pretendard,
      fontStyle: FontStyle.normal);
  static TextStyle textInputLabelColor(Color color) =>
      textInputLabel.copyWith(color: color);
  static const defaultNormalText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.roboto,
      fontStyle: FontStyle.normal);
  static TextStyle defaultNormalTextColor(Color color) =>
      defaultNormalText.copyWith(color: color);
  static const calloutBold = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.sFProText,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.3199999928474426);
  static TextStyle calloutBoldColor(Color color) =>
      calloutBold.copyWith(color: color);
}
