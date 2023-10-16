// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/x_screen/models/x_model.dart';

part 'x_event.dart';
part 'x_state.dart';

/// A bloc that manages the state of a X according to the event that is dispatched to it.
class XBloc extends Bloc<XEvent, XState> {
  XBloc(XState initialState) : super(initialState) {
    on<XInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    XInitialEvent event,
    Emitter<XState> emit,
  ) async {}
}
