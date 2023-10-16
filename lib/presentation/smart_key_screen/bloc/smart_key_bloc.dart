import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/smart_key_screen/models/smart_key_model.dart';
part 'smart_key_event.dart';
part 'smart_key_state.dart';

/// A bloc that manages the state of a SmartKey according to the event that is dispatched to it.
class SmartKeyBloc extends Bloc<SmartKeyEvent, SmartKeyState> {
  SmartKeyBloc(SmartKeyState initialState) : super(initialState) {
    on<SmartKeyInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SmartKeyInitialEvent event,
    Emitter<SmartKeyState> emit,
  ) async {}
}
