// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/unsubscribe_screen/models/unsubscribe_model.dart';

part 'unsubscribe_event.dart';
part 'unsubscribe_state.dart';

/// A bloc that manages the state of a Unsubscribe according to the event that is dispatched to it.
class UnsubscribeBloc extends Bloc<UnsubscribeEvent, UnsubscribeState> {
  UnsubscribeBloc(UnsubscribeState initialState) : super(initialState) {
    on<UnsubscribeInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    UnsubscribeInitialEvent event,
    Emitter<UnsubscribeState> emit,
  ) async {}
}
