import '../controller/no_team_data_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoTeamDataScreen.
///
/// This class ensures that the NoTeamDataController is created when the
/// NoTeamDataScreen is first loaded.
class NoTeamDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoTeamDataController());
  }
}
