// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [schedules_view_scheduled_date_scheduler_only_expanded_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class SchedulesViewScheduledDateSchedulerOnlyExpandedModel extends Equatable {
  SchedulesViewScheduledDateSchedulerOnlyExpandedModel(
      {this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  SchedulesViewScheduledDateSchedulerOnlyExpandedModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return SchedulesViewScheduledDateSchedulerOnlyExpandedModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
