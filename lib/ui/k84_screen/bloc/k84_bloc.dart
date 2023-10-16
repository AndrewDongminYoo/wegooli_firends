// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k84_screen/models/k84_model.dart';
import '/ui/k84_screen/models/userprofile2_item_model.dart';

part 'k84_event.dart';
part 'k84_state.dart';

/// A bloc that manages the state of a K84 according to the event that is dispatched to it.
class K84Bloc extends Bloc<K84Event, K84State> {
  K84Bloc(K84State initialState) : super(initialState) {
    on<K84InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K84InitialEvent event,
    Emitter<K84State> emit,
  ) async {
    emit(state.copyWith(
        k84ModelObj: state.k84ModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return List.generate(4, (index) => Userprofile2ItemModel());
  }
}
