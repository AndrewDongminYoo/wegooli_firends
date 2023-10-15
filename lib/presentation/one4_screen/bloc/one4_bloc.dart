import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/one4_screen/models/one4_model.dart';
part 'one4_event.dart';
part 'one4_state.dart';

/// A bloc that manages the state of a One4 according to the event that is dispatched to it.
class One4Bloc extends Bloc<One4Event, One4State> {
  One4Bloc(One4State initialState) : super(initialState) {
    on<One4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    One4InitialEvent event,
    Emitter<One4State> emit,
  ) async {}
}
