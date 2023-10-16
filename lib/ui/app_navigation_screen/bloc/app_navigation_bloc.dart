// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/app_navigation_screen/models/app_navigation_model.dart';

part 'app_navigation_event.dart';
part 'app_navigation_state.dart';

/// A bloc that manages the state of a AppNavigation according to the event that is dispatched to it.
class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc(AppNavigationState initialState) : super(initialState) {
    on<AppNavigationInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    AppNavigationInitialEvent event,
    Emitter<AppNavigationState> emit,
  ) async {}
}
