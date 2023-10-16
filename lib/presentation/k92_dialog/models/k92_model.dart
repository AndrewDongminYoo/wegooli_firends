// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [k92_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class K92Model extends Equatable {K92Model({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

K92Model copyWith({List<SelectionPopupModel>? dropdownItemList}) { return K92Model(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
