// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/add_an_appointment_all_collapsed_bottomsheet/models/add_an_appointment_all_collapsed_model.dart';

part 'add_an_appointment_all_collapsed_event.dart';
part 'add_an_appointment_all_collapsed_state.dart';

/// A bloc that manages the state of a AddAnAppointmentAllCollapsed according to the event that is dispatched to it.
class AddAnAppointmentAllCollapsedBloc extends Bloc<
    AddAnAppointmentAllCollapsedEvent, AddAnAppointmentAllCollapsedState> {
  AddAnAppointmentAllCollapsedBloc(
      AddAnAppointmentAllCollapsedState initialState)
      : super(initialState) {
    on<AddAnAppointmentAllCollapsedInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _onInitialize(
    AddAnAppointmentAllCollapsedInitialEvent event,
    Emitter<AddAnAppointmentAllCollapsedState> emit,
  ) async {
    emit(state.copyWith(
        addAnAppointmentAllCollapsedModelObj:
            state.addAnAppointmentAllCollapsedModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddAnAppointmentAllCollapsedState> emit,
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
