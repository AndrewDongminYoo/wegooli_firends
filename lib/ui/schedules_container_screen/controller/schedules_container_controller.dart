import '/core/app_export.dart';
import '/ui/schedules_container_screen/models/schedules_container_model.dart';

/// A controller class for the SchedulesContainerScreen.
///
/// This class manages the state of the SchedulesContainerScreen, including the
/// current schedulesContainerModelObj
class SchedulesContainerController extends GetxController {
  Rx<SchedulesContainerModel> schedulesContainerModelObj =
      SchedulesContainerModel().obs;
}
