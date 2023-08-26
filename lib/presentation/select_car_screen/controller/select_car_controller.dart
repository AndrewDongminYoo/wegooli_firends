import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/select_car_screen/models/select_car_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectCarScreen.
///
/// This class manages the state of the SelectCarScreen, including the
/// current selectCarModelObj
class SelectCarController extends GetxController {
  TextEditingController searchlocationController = TextEditingController();

  Rx<SelectCarModel> selectCarModelObj = SelectCarModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchlocationController.dispose();
  }
}
