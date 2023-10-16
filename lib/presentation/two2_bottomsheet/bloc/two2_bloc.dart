import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/two2_bottomsheet/models/two2_model.dart';
part 'two2_event.dart';
part 'two2_state.dart';

/// A bloc that manages the state of a Two2 according to the event that is dispatched to it.
class Two2Bloc extends Bloc<Two2Event, Two2State> {
  Two2Bloc(Two2State initialState) : super(initialState) {
    on<Two2InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _onInitialize(
    Two2InitialEvent event,
    Emitter<Two2State> emit,
  ) async {
    emit(state.copyWith(
        two2ModelObj: state.two2ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<Two2State> emit,
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
