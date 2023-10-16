// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [add_an_appointment_start_expanded_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AddAnAppointmentStartExpandedModel extends Equatable {AddAnAppointmentStartExpandedModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

AddAnAppointmentStartExpandedModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return AddAnAppointmentStartExpandedModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
