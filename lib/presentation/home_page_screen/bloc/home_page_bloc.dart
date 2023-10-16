import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/home_page_screen/models/home_page_model.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';

/// A bloc that manages the state of a HomePage according to the event that is dispatched to it.
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(HomePageState initialState) : super(initialState) {
    on<HomePageInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    HomePageInitialEvent event,
    Emitter<HomePageState> emit,
  ) async {}
}
