import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/shared_schedule_page/models/shared_schedule_model.dart';

/// A controller class for the SharedSchedulePage.
///
/// This class manages the state of the SharedSchedulePage, including the
/// current sharedScheduleModelObj
class SharedScheduleController extends GetxController {
  SharedScheduleController(this.sharedScheduleModelObj);

  Rx<SharedScheduleModel> sharedScheduleModelObj;
}
