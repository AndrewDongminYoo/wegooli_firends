// 📦 Package imports:
import 'package:get/get.dart';

/// This class is used in the [calendar_item_widget] screen.
class CalendarItemModel {
  CalendarItemModel({
    this.dayOfWeek,
    this.date1,
    this.date2,
    this.date3,
    this.date4,
    this.date5,
    this.id,
  }) {
    dayOfWeek = dayOfWeek ?? Rx('일');
    date1 = date1 ?? Rx('30');
    date2 = date2 ?? Rx('6');
    date3 = date3 ?? Rx('13');
    date4 = date4 ?? Rx('20');
    date5 = date5 ?? Rx('27');
    id = id ?? Rx('');
  }

  Rx<String>? dayOfWeek;

  Rx<String>? date1;

  Rx<String>? date2;

  Rx<String>? date3;

  Rx<String>? date4;

  Rx<String>? date5;

  Rx<String>? id;
}
