import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';
part 'splash_screen_one_event.dart';
part 'splash_screen_one_state.dart';

/// A bloc that manages the state of a SplashScreenOne according to the event that is dispatched to it.
class SplashScreenOneBloc
    extends Bloc<SplashScreenOneEvent, SplashScreenOneState> {
  SplashScreenOneBloc(SplashScreenOneState initialState) : super(initialState) {
    on<SplashScreenOneInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SplashScreenOneInitialEvent event,
    Emitter<SplashScreenOneState> emit,
  ) async {}
}
