import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/three1_bottomsheet/models/three1_model.dart';
part 'three1_event.dart';
part 'three1_state.dart';

/// A bloc that manages the state of a Three1 according to the event that is dispatched to it.
class Three1Bloc extends Bloc<Three1Event, Three1State> {
  Three1Bloc(Three1State initialState) : super(initialState) {
    on<Three1InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  Future<void> _onInitialize(
    Three1InitialEvent event,
    Emitter<Three1State> emit,
  ) async {
    emit(state.copyWith(
        three1ModelObj: state.three1ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
    )));
  }

  void _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<Three1State> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  void _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<Three1State> emit,
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
