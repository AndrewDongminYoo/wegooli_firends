// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [one7_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class One7Model extends Equatable {One7Model({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

One7Model copyWith({List<SelectionPopupModel>? dropdownItemList}) { return One7Model(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); }
@override List<Object?> get props => [dropdownItemList];
 }
