// 📦 Package imports:
import 'package:get/get.dart';

class UserageItemModel {
  UserageItemModel({
    this.userDay,
    this.userMonth,
    this.userYear,
    this.thirty,
    this.thirtyone,
    this.thirtytwo,
    this.id,
  }) {
    userDay = userDay ?? Rx('일');
    userMonth = userMonth ?? Rx('30');
    userYear = userYear ?? Rx('6');
    thirty = thirty ?? Rx('13');
    thirtyone = thirtyone ?? Rx('20');
    thirtytwo = thirtytwo ?? Rx('27');
    id = id ?? Rx('');
  }

  Rx<String>? userDay;

  Rx<String>? userMonth;

  Rx<String>? userYear;

  Rx<String>? thirty;

  Rx<String>? thirtyone;

  Rx<String>? thirtytwo;

  Rx<String>? id;
}
