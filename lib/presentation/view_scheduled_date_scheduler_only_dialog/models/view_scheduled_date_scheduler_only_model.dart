// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/presentation/view_scheduled_date_scheduler_only_dialog/models/listview_item_model.dart';/// This class defines the variables used in the [view_scheduled_date_scheduler_only_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewScheduledDateSchedulerOnlyModel extends Equatable {ViewScheduledDateSchedulerOnlyModel({this.listviewItemList = const []});

List<ListviewItemModel> listviewItemList;

ViewScheduledDateSchedulerOnlyModel copyWith({List<ListviewItemModel>? listviewItemList}) { return ViewScheduledDateSchedulerOnlyModel(
listviewItemList : listviewItemList ?? this.listviewItemList,
); } 
@override List<Object?> get props => [listviewItemList];
 }
