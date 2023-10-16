// ignore_for_file: must_be_immutable

part of 'add_an_appointment_end_expanded_bloc.dart';

/// Represents the state of AddAnAppointmentEndExpanded in the application.
class AddAnAppointmentEndExpandedState extends Equatable {
  AddAnAppointmentEndExpandedState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.addAnAppointmentEndExpandedModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  AddAnAppointmentEndExpandedModel? addAnAppointmentEndExpandedModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        addAnAppointmentEndExpandedModelObj,
      ];
  AddAnAppointmentEndExpandedState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    AddAnAppointmentEndExpandedModel? addAnAppointmentEndExpandedModelObj,
  }) {
    return AddAnAppointmentEndExpandedState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      addAnAppointmentEndExpandedModelObj:
          addAnAppointmentEndExpandedModelObj ??
              this.addAnAppointmentEndExpandedModelObj,
    );
  }
}
