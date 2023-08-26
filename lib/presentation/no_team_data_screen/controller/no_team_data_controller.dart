import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/no_team_data_screen/models/no_team_data_model.dart';

/// A controller class for the NoTeamDataScreen.
///
/// This class manages the state of the NoTeamDataScreen, including the
/// current noTeamDataModelObj
class NoTeamDataController extends GetxController {
  Rx<NoTeamDataModel> noTeamDataModelObj = NoTeamDataModel().obs;
}
