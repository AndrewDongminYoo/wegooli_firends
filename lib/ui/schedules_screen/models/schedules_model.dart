// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import 'user_age_model.dart';
import 'userprofile_item_model.dart';

class SchedulesModel {
  Rx<List<ProfileModel>> profiles = Rx(List.generate(4, (_) => ProfileModel()));

  Rx<List<UserAgeModel>> ages = Rx(List.generate(7, (_) => UserAgeModel()));
}
