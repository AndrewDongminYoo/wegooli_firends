// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'calendar1_item_model.dart';/// This class defines the variables used in the [schedules_team_is_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesTeamIsFullModel extends Equatable {SchedulesTeamIsFullModel({this.calendar1ItemList = const []}) {  }

List<Calendar1ItemModel> calendar1ItemList;

SchedulesTeamIsFullModel copyWith({List<Calendar1ItemModel>? calendar1ItemList}) { return SchedulesTeamIsFullModel(
calendar1ItemList : calendar1ItemList ?? this.calendar1ItemList,
); } 
@override List<Object?> get props => [calendar1ItemList];
 }
