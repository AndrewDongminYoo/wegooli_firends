// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/splash_screen_two_screen/models/splash_screen_two_model.dart';

part 'splash_screen_two_event.dart';
part 'splash_screen_two_state.dart';

/// A bloc that manages the state of a SplashScreenTwo according to the event that is dispatched to it.
class SplashScreenTwoBloc
    extends Bloc<SplashScreenTwoEvent, SplashScreenTwoState> {
  SplashScreenTwoBloc(SplashScreenTwoState initialState) : super(initialState) {
    on<SplashScreenTwoInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SplashScreenTwoInitialEvent event,
    Emitter<SplashScreenTwoState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.homePageScreen,
      );
    });
  }
}
