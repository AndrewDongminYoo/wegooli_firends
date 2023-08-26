import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/map_view_car_bottomsheet/models/map_view_car_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MapViewCarBottomsheet.
///
/// This class manages the state of the MapViewCarBottomsheet, including the
/// current mapViewCarModelObj
class MapViewCarController extends GetxController {
  TextEditingController locationoneController = TextEditingController();

  Rx<MapViewCarModel> mapViewCarModelObj = MapViewCarModel().obs;

  @override
  void onClose() {
    super.onClose();
    locationoneController.dispose();
  }
}
