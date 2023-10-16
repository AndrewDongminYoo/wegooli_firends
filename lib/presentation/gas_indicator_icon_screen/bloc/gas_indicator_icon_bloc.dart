// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/gas_indicator_icon_screen/models/gas_indicator_icon_model.dart';

part 'gas_indicator_icon_event.dart';
part 'gas_indicator_icon_state.dart';

/// A bloc that manages the state of a GasIndicatorIcon according to the event that is dispatched to it.
class GasIndicatorIconBloc
    extends Bloc<GasIndicatorIconEvent, GasIndicatorIconState> {
  GasIndicatorIconBloc(GasIndicatorIconState initialState)
      : super(initialState) {
    on<GasIndicatorIconInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    GasIndicatorIconInitialEvent event,
    Emitter<GasIndicatorIconState> emit,
  ) async {}
}
