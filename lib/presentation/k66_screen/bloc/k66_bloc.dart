import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k66_screen/models/k66_model.dart';
part 'k66_event.dart';
part 'k66_state.dart';

/// A bloc that manages the state of a K66 according to the event that is dispatched to it.
class K66Bloc extends Bloc<K66Event, K66State> {
  K66Bloc(K66State initialState) : super(initialState) {
    on<K66InitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    K66InitialEvent event,
    Emitter<K66State> emit,
  ) async {}
}
