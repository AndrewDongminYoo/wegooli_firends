// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k92_dialog/models/k92_model.dart';

part 'k92_event.dart';
part 'k92_state.dart';

/// A bloc that manages the state of a K92 according to the event that is dispatched to it.
class K92Bloc extends Bloc<K92Event, K92State> {
  K92Bloc(K92State initialState) : super(initialState) {
    on<K92InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  Future<void> _onInitialize(
    K92InitialEvent event,
    Emitter<K92State> emit,
  ) async {
    emit(state.copyWith(
        k92ModelObj: state.k92ModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  Future<void> _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K92State> emit,
  ) async {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: 'Item One', isSelected: true),
      SelectionPopupModel(id: 2, title: 'Item Two'),
      SelectionPopupModel(id: 3, title: 'Item Three')
    ];
  }
}
