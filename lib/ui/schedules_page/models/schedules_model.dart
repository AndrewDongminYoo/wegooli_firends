// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '/ui/schedules_page/models/calendar_item_model.dart';

/// This class defines the variables used in the [schedules_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesModel extends Equatable {
  SchedulesModel({this.calendarItemList = const []});

  List<CalendarItemModel> calendarItemList;

  SchedulesModel copyWith({List<CalendarItemModel>? calendarItemList}) {
    return SchedulesModel(
      calendarItemList: calendarItemList ?? this.calendarItemList,
    );
  }

  @override
  List<Object?> get props => [calendarItemList];
}
