import '/core/app_export.dart';
import '/ui/schedules_page/models/schedules_model.dart';

/// A controller class for the SchedulesPage.
///
/// This class manages the state of the SchedulesPage, including the
/// current schedulesModelObj
class SchedulesController extends GetxController {
  SchedulesController(this.schedulesModelObj);

  Rx<SchedulesModel> schedulesModelObj;
}
