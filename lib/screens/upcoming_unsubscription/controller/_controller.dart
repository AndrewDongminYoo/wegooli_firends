// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/screens/upcoming_unsubscription/models/_model.dart';

/// A controller class for the UpcomingUnsubscriptionViewScreen.
///
/// This class manages the state of the UpcomingUnsubscriptionViewScreen, including the
/// current upcomingUnsubscriptionViewModelObj
class UpcomingUnsubscriptionViewController extends GetxController {
  Rx<UpcomingUnsubscriptionViewModel> upcomingUnsubscriptionViewModelObj =
      UpcomingUnsubscriptionViewModel().obs;
}
