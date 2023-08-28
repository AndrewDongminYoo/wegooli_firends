// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the UpcomingUnsubscriptionViewScreen.
///
/// This class manages the state of the UpcomingUnsubscriptionViewScreen, including the
/// current upcomingUnsubscriptionViewModelObj
class UpcomingUnsubscriptionController extends GetxController {
  static UpcomingUnsubscriptionController get to =>
      Get.isRegistered<UpcomingUnsubscriptionController>()
          ? Get.find<UpcomingUnsubscriptionController>()
          : Get.put(UpcomingUnsubscriptionController());
}
