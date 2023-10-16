// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/add_an_appointment_end_expanded_bottomsheet/models/add_an_appointment_end_expanded_model.dart';

part 'add_an_appointment_end_expanded_event.dart';
part 'add_an_appointment_end_expanded_state.dart';

/// A bloc that manages the state of a AddAnAppointmentEndExpanded according to the event that is dispatched to it.
class AddAnAppointmentEndExpandedBloc extends Bloc<
    AddAnAppointmentEndExpandedEvent, AddAnAppointmentEndExpandedState> {
  AddAnAppointmentEndExpandedBloc(AddAnAppointmentEndExpandedState initialState)
      : super(initialState) {
    on<AddAnAppointmentEndExpandedInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  Future<void> _onInitialize(
    AddAnAppointmentEndExpandedInitialEvent event,
    Emitter<AddAnAppointmentEndExpandedState> emit,
  ) async {
    emit(state.copyWith(
        addAnAppointmentEndExpandedModelObj:
            state.addAnAppointmentEndExpandedModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
    )));
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddAnAppointmentEndExpandedState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  void _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<AddAnAppointmentEndExpandedState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: 'Item One',
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: 'Item Two',
      ),
      SelectionPopupModel(
        id: 3,
        title: 'Item Three',
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: 'Item One',
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: 'Item Two',
      ),
      SelectionPopupModel(
        id: 3,
        title: 'Item Three',
      )
    ];
  }
}
