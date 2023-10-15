// ignore_for_file: must_be_immutable

part of 'add_an_appointment_all_collapsed_bloc.dart';

/// Represents the state of AddAnAppointmentAllCollapsed in the application.
class AddAnAppointmentAllCollapsedState extends Equatable {
  AddAnAppointmentAllCollapsedState({
    this.selectedDropDownValue,
    this.addAnAppointmentAllCollapsedModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AddAnAppointmentAllCollapsedModel? addAnAppointmentAllCollapsedModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        addAnAppointmentAllCollapsedModelObj,
      ];
  AddAnAppointmentAllCollapsedState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    AddAnAppointmentAllCollapsedModel? addAnAppointmentAllCollapsedModelObj,
  }) {
    return AddAnAppointmentAllCollapsedState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addAnAppointmentAllCollapsedModelObj:
          addAnAppointmentAllCollapsedModelObj ??
              this.addAnAppointmentAllCollapsedModelObj,
    );
  }
}
