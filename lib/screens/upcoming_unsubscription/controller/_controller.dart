// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the UpcomingUnsubscriptionViewScreen.
///
/// This class manages the state of the UpcomingUnsubscriptionViewScreen, including the
/// current upcomingUnsubscriptionViewModelObj
class UpcomingUnsubscriptionViewController extends GetxController {
  static UpcomingUnsubscriptionViewController get to =>
      Get.isRegistered<UpcomingUnsubscriptionViewController>()
          ? Get.find<UpcomingUnsubscriptionViewController>()
          : Get.put(UpcomingUnsubscriptionViewController());
}
