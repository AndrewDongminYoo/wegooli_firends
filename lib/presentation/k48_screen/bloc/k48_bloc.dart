import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k48_screen/models/k48_model.dart';
part 'k48_event.dart';
part 'k48_state.dart';

/// A bloc that manages the state of a K48 according to the event that is dispatched to it.
class K48Bloc extends Bloc<K48Event, K48State> {
  K48Bloc(K48State initialState) : super(initialState) {
    on<K48InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K48InitialEvent event,
    Emitter<K48State> emit,
  ) async {}
}
