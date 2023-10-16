import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k65_screen/models/k65_model.dart';
part 'k65_event.dart';
part 'k65_state.dart';

/// A bloc that manages the state of a K65 according to the event that is dispatched to it.
class K65Bloc extends Bloc<K65Event, K65State> {
  K65Bloc(K65State initialState) : super(initialState) {
    on<K65InitialEvent>(_onInitialize);
  }

  void _onInitialize(
    K65InitialEvent event,
    Emitter<K65State> emit,
  ) async {
    emit(state.copyWith(
        cardnumberoneController: TextEditingController(),
        expirationdateController: TextEditingController(),
        zipcodeController: TextEditingController(),
        edittextController: TextEditingController()));
  }
}
