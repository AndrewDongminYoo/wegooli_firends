// ignore_for_file: must_be_immutable

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/ui/schedules_team_is_not_full_screen/models/userage_item_model.dart';
import '/ui/schedules_team_is_not_full_screen/models/userprofile_item_model.dart';

/// This class defines the variables used in the [schedules_team_is_not_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesTeamIsNotFullModel extends Equatable {
  SchedulesTeamIsNotFullModel({
    this.userprofileItemList = const [],
    this.userageItemList = const [],
  });

  List<UserprofileItemModel> userprofileItemList;

  List<UserageItemModel> userageItemList;

  SchedulesTeamIsNotFullModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<UserageItemModel>? userageItemList,
  }) {
    return SchedulesTeamIsNotFullModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      userageItemList: userageItemList ?? this.userageItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList, userageItemList];
}
