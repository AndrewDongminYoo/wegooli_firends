// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';

class Telecom {
  final providers = Rx([
    DropdownData(id: 01, title: 'KT엠모바일', value: Mobile.KT),
    DropdownData(id: 02, title: 'LG U+', value: Mobile.LGU),
    DropdownData(id: 03, title: 'SKT', value: Mobile.SKT),
    DropdownData(id: 04, title: 'LG헬로모바일', value: Mobile.HELLO),
    DropdownData(id: 05, title: '티플러스', value: Mobile.KCT),
    DropdownData(id: 06, title: 'SK7모바일', value: Mobile.SK7),
  ]);
}

enum Mobile {
  KT, // KT엠모바일
  LGU, // LG U+
  SKT, // SKT
  HELLO, // LG헬로모바일
  KCT, // 티플러스
  SK7, // SK7모바일
}
