// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';
import '/ui/one_on_one_screen/models/one_on_one_model.dart';

class OneOnOneController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static OneOnOneController get to => GetIt.I.isRegistered<OneOnOneController>()
      ? GetIt.I.get<OneOnOneController>()
      : GetIt.I.registerSingleton(OneOnOneController());

  TextEditingController inquiryContent = TextEditingController();

  Rx<OneOnOneModel> oneOnOne = OneOnOneModel().obs;
  DropdownData? inquiryType;
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    inquiryContent.dispose();
  }
}
