import '/core/app_export.dart';
import '/ui/notices_one_screen/models/notices_one_model.dart';

/// A controller class for the NoticesOneScreen.
///
/// This class manages the state of the NoticesOneScreen, including the
/// current noticesOneModelObj
class NoticesOneController extends GetxController {
  Rx<NoticesOneModel> noticesOneModelObj = NoticesOneModel().obs;
}
