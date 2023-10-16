// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'userage_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [schedules_team_is_not_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesTeamIsNotFullModel {
  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(4, (index) => UserprofileItemModel()));

  Rx<List<UserageItemModel>> userageItemList =
      Rx(List.generate(7, (index) => UserageItemModel()));
}
