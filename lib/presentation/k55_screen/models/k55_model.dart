// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [k55_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K55Model extends Equatable {K55Model({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

K55Model copyWith({List<SelectionPopupModel>? dropdownItemList}) { return K55Model(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
