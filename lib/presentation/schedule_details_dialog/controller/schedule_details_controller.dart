import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/schedule_details_dialog/models/schedule_details_model.dart';

/// A controller class for the ScheduleDetailsDialog.
///
/// This class manages the state of the ScheduleDetailsDialog, including the
/// current scheduleDetailsModelObj
class ScheduleDetailsController extends GetxController {
  Rx<ScheduleDetailsModel> scheduleDetailsModelObj = ScheduleDetailsModel().obs;
}
