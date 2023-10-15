import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/k78_screen/models/k78_model.dart';
part 'k78_event.dart';
part 'k78_state.dart';

/// A bloc that manages the state of a K78 according to the event that is dispatched to it.
class K78Bloc extends Bloc<K78Event, K78State> {
  K78Bloc(K78State initialState) : super(initialState) {
    on<K78InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K78InitialEvent event,
    Emitter<K78State> emit,
  ) async {}
}
