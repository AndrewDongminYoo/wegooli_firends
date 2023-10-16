// ignore_for_file: must_be_immutable

part of 'add_an_appointment_start_expanded_bloc.dart';

/// Represents the state of AddAnAppointmentStartExpanded in the application.
class AddAnAppointmentStartExpandedState extends Equatable {
  AddAnAppointmentStartExpandedState({
    this.selectedDropDownValue,
    this.addAnAppointmentStartExpandedModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AddAnAppointmentStartExpandedModel? addAnAppointmentStartExpandedModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        addAnAppointmentStartExpandedModelObj,
      ];
  AddAnAppointmentStartExpandedState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    AddAnAppointmentStartExpandedModel? addAnAppointmentStartExpandedModelObj,
  }) {
    return AddAnAppointmentStartExpandedState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addAnAppointmentStartExpandedModelObj:
          addAnAppointmentStartExpandedModelObj ??
              this.addAnAppointmentStartExpandedModelObj,
    );
  }
}
