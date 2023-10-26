// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../models/contact_us_history_model.dart';

class ContactUsHistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // ignore: prefer_constructors_over_static_methods
  static ContactUsHistoryController get to =>
      GetIt.I.isRegistered<ContactUsHistoryController>()
          ? GetIt.I.get<ContactUsHistoryController>()
          : GetIt.I.registerSingleton(ContactUsHistoryController());

  Rx<HistoryModel> history = HistoryModel().obs;
  late TabController tabController =
      GetIt.I.registerSingleton(TabController(vsync: this, length: 3));
}
