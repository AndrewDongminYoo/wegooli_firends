import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/one3_screen/models/one3_model.dart';
part 'one3_event.dart';
part 'one3_state.dart';

/// A bloc that manages the state of a One3 according to the event that is dispatched to it.
class One3Bloc extends Bloc<One3Event, One3State> {
  One3Bloc(One3State initialState) : super(initialState) {
    on<One3InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    One3InitialEvent event,
    Emitter<One3State> emit,
  ) async {
    emit(state.copyWith(
      inputoneController: TextEditingController(),
    ));
  }
}
