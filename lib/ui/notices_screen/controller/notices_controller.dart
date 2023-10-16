import '/core/app_export.dart';
import '/ui/notices_screen/models/notices_model.dart';

/// A controller class for the NoticesScreen.
///
/// This class manages the state of the NoticesScreen, including the
/// current noticesModelObj
class NoticesController extends GetxController {
  Rx<NoticesModel> noticesModelObj = NoticesModel().obs;
}
