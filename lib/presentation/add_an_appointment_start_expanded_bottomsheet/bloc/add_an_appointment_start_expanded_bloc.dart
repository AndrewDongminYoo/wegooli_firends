import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/add_an_appointment_start_expanded_bottomsheet/models/add_an_appointment_start_expanded_model.dart';
part 'add_an_appointment_start_expanded_event.dart';
part 'add_an_appointment_start_expanded_state.dart';

/// A bloc that manages the state of a AddAnAppointmentStartExpanded according to the event that is dispatched to it.
class AddAnAppointmentStartExpandedBloc extends Bloc<
    AddAnAppointmentStartExpandedEvent, AddAnAppointmentStartExpandedState> {
  AddAnAppointmentStartExpandedBloc(
      AddAnAppointmentStartExpandedState initialState)
      : super(initialState) {
    on<AddAnAppointmentStartExpandedInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _onInitialize(
    AddAnAppointmentStartExpandedInitialEvent event,
    Emitter<AddAnAppointmentStartExpandedState> emit,
  ) async {
    emit(state.copyWith(
        addAnAppointmentStartExpandedModelObj:
            state.addAnAppointmentStartExpandedModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddAnAppointmentStartExpandedState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
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
}
