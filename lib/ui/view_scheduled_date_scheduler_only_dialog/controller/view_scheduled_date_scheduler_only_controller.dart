// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/view_scheduled_date_scheduler_only_dialog/models/view_scheduled_date_scheduler_only_model.dart';

/// A controller class for the ViewScheduledDateSchedulerOnlyDialog.
///
/// This class manages the state of the ViewScheduledDateSchedulerOnlyDialog, including the
/// current viewScheduledDateSchedulerOnlyModelObj
class ViewScheduledDateSchedulerOnlyController extends GetxController {
  Rx<ViewScheduledDateSchedulerOnlyModel>
      viewScheduledDateSchedulerOnlyModelObj =
      ViewScheduledDateSchedulerOnlyModel().obs;
}
