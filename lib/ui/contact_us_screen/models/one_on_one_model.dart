// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';
import 'add_photo_item.dart';

class OneOnOneModel {
  final inquiryTypes = Rx([
    DropdownData(id: 1, title: '이용 문의'),
    DropdownData(id: 2, title: '팀원 신고'),
    DropdownData(id: 3, title: '사고 신고'),
    DropdownData(id: 4, title: '장기 렌탈'),
    DropdownData(id: 5, title: '구독 관련'),
  ]);

  final items = Rx(List.generate(5, (_) => AddPhotoItem()));
}