// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:wegooli_friends_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [add_an_appointment_end_expanded_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AddAnAppointmentEndExpandedModel extends Equatable {
  AddAnAppointmentEndExpandedModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  AddAnAppointmentEndExpandedModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return AddAnAppointmentEndExpandedModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
