import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/gas_indicator_icon_screen/models/gas_indicator_icon_model.dart';
part 'gas_indicator_icon_event.dart';
part 'gas_indicator_icon_state.dart';

/// A bloc that manages the state of a GasIndicatorIcon according to the event that is dispatched to it.
class GasIndicatorIconBloc
    extends Bloc<GasIndicatorIconEvent, GasIndicatorIconState> {
  GasIndicatorIconBloc(GasIndicatorIconState initialState)
      : super(initialState) {
    on<GasIndicatorIconInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GasIndicatorIconInitialEvent event,
    Emitter<GasIndicatorIconState> emit,
  ) async {}
}
