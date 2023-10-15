import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k49_screen/models/k49_model.dart';
part 'k49_event.dart';
part 'k49_state.dart';

/// A bloc that manages the state of a K49 according to the event that is dispatched to it.
class K49Bloc extends Bloc<K49Event, K49State> {
  K49Bloc(K49State initialState) : super(initialState) {
    on<K49InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K49InitialEvent event,
    Emitter<K49State> emit,
  ) async {}
}
