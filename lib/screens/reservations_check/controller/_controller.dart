// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the ReservationsCheckingPageDialog.
///
/// This class manages the state of the ReservationsCheckingPageDialog, including the
/// current reservationsCheckingPageModelObj
class ReservationsCheckingPageController extends GetxController {
  Rx<ReservationsCheckingPageModel> reservationsCheckingPageModelObj =
      ReservationsCheckingPageModel().obs;
}
