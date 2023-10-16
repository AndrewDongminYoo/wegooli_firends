// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/seven_screen/models/seven_model.dart';

part 'seven_event.dart';
part 'seven_state.dart';

/// A bloc that manages the state of a Seven according to the event that is dispatched to it.
class SevenBloc extends Bloc<SevenEvent, SevenState> {
  SevenBloc(SevenState initialState) : super(initialState) {
    on<SevenInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  void _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SevenState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  Future<void> _onInitialize(
    SevenInitialEvent event,
    Emitter<SevenState> emit,
  ) async {
    emit(state.copyWith(
      idoneController: TextEditingController(),
      passwordoneController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}