import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/mypage_contact_us_empty_history_screen/models/mypage_contact_us_empty_history_model.dart';
part 'mypage_contact_us_empty_history_event.dart';
part 'mypage_contact_us_empty_history_state.dart';

/// A bloc that manages the state of a MyPageContactUsEmptyHistory according to the event that is dispatched to it.
class MyPageContactUsEmptyHistoryBloc extends Bloc<
    MyPageContactUsEmptyHistoryEvent, MyPageContactUsEmptyHistoryState> {
  MyPageContactUsEmptyHistoryBloc(MyPageContactUsEmptyHistoryState initialState)
      : super(initialState) {
    on<MyPageContactUsEmptyHistoryInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    MyPageContactUsEmptyHistoryInitialEvent event,
    Emitter<MyPageContactUsEmptyHistoryState> emit,
  ) async {}
}
