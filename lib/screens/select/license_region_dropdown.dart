// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseRegionDropdown extends StatelessWidget {
  const LicenseRegionDropdown({
    super.key,
    required this.controller,
  });

  final LicenseController controller;

  @override
  Widget build(BuildContext context) {
    final licenseRegions = [
      SelectionPopupModel(id: 11, title: '서울', value: '서울지방경찰청:[강남,도봉,서부,강서]'),
      SelectionPopupModel(id: 12, title: '부산', value: '부산지방경찰청:[부산북부,부산남부]'),
      SelectionPopupModel(id: 13, title: '경기남부', value: '경기남부지방경찰청:[안산,용인]'),
      SelectionPopupModel(id: 14, title: '강원', value: '강원지방경찰청:[춘천,원주,태백,강릉]'),
      SelectionPopupModel(id: 15, title: '충북', value: '충북지방경찰청:[청주,충주]'),
      SelectionPopupModel(id: 16, title: '충남', value: '충남지방경찰청:[예산]'),
      SelectionPopupModel(id: 17, title: '전북', value: '전북지방경찰청:[전북]'),
      SelectionPopupModel(id: 18, title: '전남', value: '전남지방경찰청:[전남,광양]'),
      SelectionPopupModel(id: 19, title: '경북', value: '경북지방경찰청:[문경,포항]'),
      SelectionPopupModel(id: 20, title: '경남', value: '경남지방경찰청:[마산]'),
      SelectionPopupModel(id: 21, title: '제주', value: '제주지방경찰청:[제주]'),
      SelectionPopupModel(id: 22, title: '대구', value: '대구지방경찰청:[대구]'),
      SelectionPopupModel(id: 23, title: '인천', value: '인천지방경찰청:[인천]'),
      SelectionPopupModel(id: 24, title: '광주', value: '광주지방경찰청:[없음]'),
      SelectionPopupModel(id: 25, title: '대전', value: '대전지방경찰청:[대전]'),
      SelectionPopupModel(id: 26, title: '울산', value: '울산지방경찰청:[울산]'),
      SelectionPopupModel(id: 28, title: '경기북부', value: '경기북부지방경찰청:[의정부]'),
      SelectionPopupModel(title: '세종', value: '세종지방경찰청:[없음]'),
    ];
    return CustomDropDown(
        width: 160.h,
        icon: Container(
            margin: getMargin(left: 30, right: 10),
            child: CustomImageView(svgPath: Assets.svg.imgCaretDown.path)),
        hintText: l10ns.region,
        margin: getMargin(top: 4),
        textStyle: CustomTextStyles.bodyLargeGray500,
        items: licenseRegions,
        filled: true,
        fillColor: Colors.white,
        contentPadding: getPadding(left: 10, top: 14, bottom: 14),
        onChanged: (SelectionPopupModel value) {
          licenseRegions.onSelected(value);
        });
  }
}
