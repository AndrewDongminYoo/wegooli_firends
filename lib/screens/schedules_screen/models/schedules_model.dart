// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import 'user_age_model.dart';
import 'userprofile_item_model.dart';

class SchedulesModel {
  final profiles = Rx(List.generate(4, (_) => ProfileModel()));

  final ages = Rx(List.generate(7, (_) => UserAgeModel()));
}
