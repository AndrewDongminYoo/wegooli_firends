// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/two_screen/models/two_model.dart';

part 'two_event.dart';
part 'two_state.dart';

/// A bloc that manages the state of a Two according to the event that is dispatched to it.
class TwoBloc extends Bloc<TwoEvent, TwoState> {
  TwoBloc(TwoState initialState) : super(initialState) {
    on<TwoInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    TwoInitialEvent event,
    Emitter<TwoState> emit,
  ) async {
    emit(state.copyWith(
        cardnumberoneController: TextEditingController(),
        expirationdateController: TextEditingController(),
        zipcodeController: TextEditingController(),
        edittextController: TextEditingController()));
  }
}
