// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/smart_key_details_screen/models/smart_key_details_model.dart';

part 'smart_key_details_event.dart';
part 'smart_key_details_state.dart';

/// A bloc that manages the state of a SmartKeyDetails according to the event that is dispatched to it.
class SmartKeyDetailsBloc
    extends Bloc<SmartKeyDetailsEvent, SmartKeyDetailsState> {
  SmartKeyDetailsBloc(SmartKeyDetailsState initialState) : super(initialState) {
    on<SmartKeyDetailsInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SmartKeyDetailsInitialEvent event,
    Emitter<SmartKeyDetailsState> emit,
  ) async {}
}
