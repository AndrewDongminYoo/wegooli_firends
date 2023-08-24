// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/selection_popup.dart';

/// This class defines the variables used in the [register_license],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterLicensePageModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: '1종 보통면허',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: '2종 보통면허',
    ),
    SelectionPopupModel(
      id: 3,
      title: '1종 대형면허',
    ),
    SelectionPopupModel(
      id: 4,
      title: '2종 오토면허',
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: '강원',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: '경기',
    ),
    SelectionPopupModel(
      id: 3,
      title: '경기남부',
    ),
    SelectionPopupModel(
      id: 4,
      title: '경기북부',
    ),
    SelectionPopupModel(
      id: 5,
      title: '경남',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 6,
      title: '경북',
    ),
    SelectionPopupModel(
      id: 7,
      title: '광주',
    ),
    SelectionPopupModel(
      id: 8,
      title: '대구',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 9,
      title: '대전',
    ),
    SelectionPopupModel(
      id: 10,
      title: '부산',
    ),
    SelectionPopupModel(
      id: 11,
      title: '서울',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 12,
      title: '울산',
    ),
    SelectionPopupModel(
      id: 13,
      title: '인천',
    ),
    SelectionPopupModel(
      id: 14,
      title: '전남',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 15,
      title: '전북',
    ),
    SelectionPopupModel(
      id: 16,
      title: '제주',
    ),
    SelectionPopupModel(
      id: 17,
      title: '충남',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 18,
      title: '충북',
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: '11',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: '12',
    ),
    SelectionPopupModel(
      id: 3,
      title: '13',
    ),
    SelectionPopupModel(
      id: 4,
      title: '14',
    ),
    SelectionPopupModel(
      id: 5,
      title: '15',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 6,
      title: '16',
    ),
    SelectionPopupModel(
      id: 7,
      title: '17',
    ),
    SelectionPopupModel(
      id: 8,
      title: '18',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 9,
      title: '19',
    ),
    SelectionPopupModel(
      id: 10,
      title: '20',
    ),
    SelectionPopupModel(
      id: 11,
      title: '21',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 12,
      title: '22',
    ),
    SelectionPopupModel(
      id: 13,
      title: '23',
    ),
    SelectionPopupModel(
      id: 14,
      title: '24',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 15,
      title: '25',
    ),
    SelectionPopupModel(
      id: 16,
      title: '26',
    ),
    SelectionPopupModel(
      id: 17,
      title: '27',
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 18,
      title: '28',
    )
  ]);
}
