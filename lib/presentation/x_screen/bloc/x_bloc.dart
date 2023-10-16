import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/x_screen/models/x_model.dart';
part 'x_event.dart';
part 'x_state.dart';

/// A bloc that manages the state of a X according to the event that is dispatched to it.
class XBloc extends Bloc<XEvent, XState> {
  XBloc(XState initialState) : super(initialState) {
    on<XInitialEvent>(_onInitialize);
  }

  _onInitialize(
    XInitialEvent event,
    Emitter<XState> emit,
  ) async {}
}
