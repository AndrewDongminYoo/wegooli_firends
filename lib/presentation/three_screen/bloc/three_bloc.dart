// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/three_screen/models/three_model.dart';

part 'three_event.dart';
part 'three_state.dart';

/// A bloc that manages the state of a Three according to the event that is dispatched to it.
class ThreeBloc extends Bloc<ThreeEvent, ThreeState> {
  ThreeBloc(ThreeState initialState) : super(initialState) {
    on<ThreeInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  void _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ThreeState> emit,
  ) {
    emit(state.copyWith(
      subscriptionInf: event.value,
    ));
  }

  Future<void> _onInitialize(
    ThreeInitialEvent event,
    Emitter<ThreeState> emit,
  ) async {
    emit(state.copyWith(
      subscriptionInf: false,
    ));
  }
}
