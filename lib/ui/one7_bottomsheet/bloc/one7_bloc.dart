// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/one7_bottomsheet/models/one7_model.dart';

part 'one7_event.dart';
part 'one7_state.dart';

/// A bloc that manages the state of a One7 according to the event that is dispatched to it.
class One7Bloc extends Bloc<One7Event, One7State> {
  One7Bloc(One7State initialState) : super(initialState) {
    on<One7InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _onInitialize(
    One7InitialEvent event,
    Emitter<One7State> emit,
  ) async {
    emit(state.copyWith(
        one7ModelObj: state.one7ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<One7State> emit,
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