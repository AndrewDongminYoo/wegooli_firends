// 📦 Package imports:
import 'package:get/get.dart';

class CalendarItemModel {
  CalendarItemModel({
    this.day1,
    this.day2,
    this.day3,
    this.day4,
    this.day5,
    this.day6,
    this.id,
  }) {
    day1 = day1 ?? Rx('일');
    day2 = day2 ?? Rx('30');
    day3 = day3 ?? Rx('6');
    day4 = day4 ?? Rx('13');
    day5 = day5 ?? Rx('20');
    day6 = day6 ?? Rx('27');
    id = id ?? Rx('');
  }

  Rx<String>? day1;

  Rx<String>? day2;

  Rx<String>? day3;

  Rx<String>? day4;

  Rx<String>? day5;

  Rx<String>? day6;

  Rx<String>? id;
}
