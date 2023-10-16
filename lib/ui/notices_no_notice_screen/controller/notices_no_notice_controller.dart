import '/core/app_export.dart';
import '/ui/notices_no_notice_screen/models/notices_no_notice_model.dart';

/// A controller class for the NoticesNoNoticeScreen.
///
/// This class manages the state of the NoticesNoNoticeScreen, including the
/// current noticesNoNoticeModelObj
class NoticesNoNoticeController extends GetxController {
  Rx<NoticesNoNoticeModel> noticesNoNoticeModelObj = NoticesNoNoticeModel().obs;
}
