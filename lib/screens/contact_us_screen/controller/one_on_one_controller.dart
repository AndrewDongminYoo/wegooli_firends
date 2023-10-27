// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../models/one_on_one_model.dart';
import '/core/utils/logger.dart';
import '/data/common/dropdown_data.dart';

class OneOnOneController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static OneOnOneController get to => GetIt.I.isRegistered<OneOnOneController>()
      ? GetIt.I.get<OneOnOneController>()
      : GetIt.I.registerSingleton(OneOnOneController());

  final inquiryContent = TextEditingController();

  final oneOnOne = OneOnOneModel().obs;
  DropdownData? inquiryType;
  final canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    inquiryContent.dispose();
  }

  void printFormFields() {
    logger.i('문의유형: ${inquiryType?.title} ${inquiryType?.value}');
    logger.i('문의내용: ${inquiryContent.text}');
  }
}
