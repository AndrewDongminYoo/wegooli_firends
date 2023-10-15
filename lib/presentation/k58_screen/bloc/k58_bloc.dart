import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k58_screen/models/k58_model.dart';
part 'k58_event.dart';
part 'k58_state.dart';

/// A bloc that manages the state of a K58 according to the event that is dispatched to it.
class K58Bloc extends Bloc<K58Event, K58State> {
  K58Bloc(K58State initialState) : super(initialState) {
    on<K58InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K58InitialEvent event,
    Emitter<K58State> emit,
  ) async {}
}
