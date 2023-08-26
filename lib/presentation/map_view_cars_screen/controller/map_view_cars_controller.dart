import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/map_view_cars_screen/models/map_view_cars_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MapViewCarsScreen.
///
/// This class manages the state of the MapViewCarsScreen, including the
/// current mapViewCarsModelObj
class MapViewCarsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MapViewCarsModel> mapViewCarsModelObj = MapViewCarsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
